import * as React from 'react';
import AppLayout from '@/layouts/app-layout';
import { Head, router, useForm, usePage } from '@inertiajs/react';
import { type BreadcrumbItem, type SharedData } from '@/types';
import { cn } from '@/lib/utils';

import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover';
import {
    Command,
    CommandEmpty,
    CommandGroup,
    CommandInput,
    CommandItem,
    CommandList,
} from '@/components/ui/command';
import { toast } from 'sonner';
import { Plus, Users2, XCircle, Table as TableIcon, Check, ChevronsUpDown, Search, Wand2 } from 'lucide-react';

type Country = {
    id: number;
    code: string;
    name: string;
    flag_url?: string | null;
};

type UserType = {
    id: number;
    name: string;
    slug: string;
};

type Participant = {
    id: number;
    full_name: string;
    country?: Country | null;
    user_type?: UserType | null;
};

type TableAssignment = {
    id: number;
    seat_number: number;
    assigned_at?: string | null;
    participant?: Participant | null;
};

type TableRow = {
    id: number;
    table_number: string;
    capacity: number;
    assigned_count: number;
    assignments: TableAssignment[];
};

type EventRow = {
    id: number;
    title: string;
    starts_at?: string | null;
    ends_at?: string | null;
    is_active: boolean;
};

type PageProps = {
    tables?: TableRow[];
    participants?: Participant[];
    events?: EventRow[];
    selected_event_id?: number | null;
    view?: 'create' | 'assignment' | null;
};

const breadcrumbs: BreadcrumbItem[] = [{ title: 'Table Assignment', href: '/table-assignment' }];

const ENDPOINTS = {
    tables: {
        store: '/table-assignment/tables',
        update: (id: number) => `/table-assignment/tables/${id}`,
        destroy: (id: number) => `/table-assignment/tables/${id}`,
    },
    assignments: {
        store: '/table-assignment/assignments',
        update: (id: number) => `/table-assignment/assignments/${id}`,
        destroy: (id: number) => `/table-assignment/assignments/${id}`,
    },
};

const PRIMARY_BTN =
    'bg-[#00359c] text-white hover:bg-[#00359c]/90 focus-visible:ring-[#00359c]/30 dark:bg-[#00359c] dark:hover:bg-[#00359c]/90';

function formatDateTime(value?: string | null) {
    if (!value) return '—';
    const d = new Date(value);
    if (Number.isNaN(d.getTime())) return '—';
    return new Intl.DateTimeFormat('en-PH', {
        year: 'numeric',
        month: 'short',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
    }).format(d);
}

type EventPhase = 'ongoing' | 'upcoming' | 'closed';

function resolveEventPhase(event: EventRow, now: number): EventPhase {
    if (!event.is_active) return 'closed';
    const startsAt = event.starts_at ? new Date(event.starts_at).getTime() : null;
    const endsAt = event.ends_at ? new Date(event.ends_at).getTime() : null;

    if (startsAt && now < startsAt) return 'upcoming';
    if (endsAt && now > endsAt) return 'closed';
    return 'ongoing';
}

function phaseLabel(phase: EventPhase) {
    return phase === 'ongoing' ? 'Ongoing' : phase === 'upcoming' ? 'Upcoming' : 'Closed';
}

function phaseBadgeClass(phase: EventPhase) {
    switch (phase) {
        case 'ongoing':
            return 'bg-emerald-100 text-emerald-700';
        case 'upcoming':
            return 'bg-amber-100 text-amber-700';
        default:
            return 'bg-slate-200 text-slate-600';
    }
}

function FlagThumb({ country, size = 18 }: { country: Country; size?: number }) {
    const src = country.flag_url || null;

    return (
        <div
            className="grid shrink-0 place-items-center overflow-hidden rounded-md border border-slate-200 bg-white text-[10px] font-semibold text-slate-600 dark:border-slate-800 dark:bg-slate-950 dark:text-slate-300"
            style={{ width: size, height: size }}
        >
            {src ? (
                <img
                    src={src}
                    alt={`${country.name} flag`}
                    className="h-full w-full object-cover"
                    loading="lazy"
                    decoding="async"
                    draggable={false}
                />
            ) : (
                <span>{country.code}</span>
            )}
        </div>
    );
}

type SearchItem = {
    value: string;
    label: string;
    description?: string;
    disabled?: boolean;
};

function SearchableDropdown({
    value,
    onValueChange,
    items,
    placeholder = 'Select...',
    searchPlaceholder = 'Search...',
    emptyText = 'No results found.',
    disabled = false,
    buttonClassName,
}: {
    value: string;
    onValueChange: (next: string) => void;
    items: SearchItem[];
    placeholder?: string;
    searchPlaceholder?: string;
    emptyText?: string;
    disabled?: boolean;
    buttonClassName?: string;
}) {
    const [open, setOpen] = React.useState(false);

    const selected = React.useMemo(
        () => items.find((i) => i.value === value) ?? null,
        [items, value],
    );

    return (
        <Popover open={open} onOpenChange={setOpen}>
            <PopoverTrigger asChild>
                <Button
                    type="button"
                    variant="outline"
                    role="combobox"
                    aria-expanded={open}
                    disabled={disabled}
                    className={cn('w-full justify-between gap-2', buttonClassName)}
                >
                    <span className={cn('min-w-0 truncate', !selected ? 'text-slate-500' : undefined)}>
                        {selected ? selected.label : placeholder}
                    </span>
                    <ChevronsUpDown className="h-4 w-4 shrink-0 opacity-60" />
                </Button>
            </PopoverTrigger>

            <PopoverContent align="start" className="w-[--radix-popover-trigger-width] p-0">
                <Command>
                    <CommandInput placeholder={searchPlaceholder} />
                    <CommandEmpty>{emptyText}</CommandEmpty>

                    <CommandList>
                        <CommandGroup>
                            {items.map((item) => (
                                <CommandItem
                                    key={item.value}
                                    value={`${item.label} ${item.description ?? ''}`.trim()}
                                    disabled={item.disabled}
                                    onSelect={() => {
                                        onValueChange(item.value);
                                        setOpen(false);
                                    }}
                                    className="gap-2"
                                >
                                    <Check
                                        className={cn(
                                            'h-4 w-4',
                                            value === item.value ? 'opacity-100' : 'opacity-0',
                                        )}
                                    />
                                    <div className="min-w-0">
                                        <div className="truncate">{item.label}</div>
                                        {item.description ? (
                                            <div className="truncate text-xs text-slate-500 dark:text-slate-400">
                                                {item.description}
                                            </div>
                                        ) : null}
                                    </div>
                                </CommandItem>
                            ))}
                        </CommandGroup>
                    </CommandList>
                </Command>
            </PopoverContent>
        </Popover>
    );
}


export default function TableAssignmenyPage(props: PageProps) {
    const { auth } = usePage<SharedData>().props;
    const userType = auth.user?.user_type ?? auth.user?.userType;
    const roleName = (userType?.name ?? '').toUpperCase();
    const roleSlug = (userType?.slug ?? '').toUpperCase();
    const roleValue = `${roleSlug || roleName}`.replace(/[_-]+/g, ' ').trim();
    const isChedAdmin = roleValue === 'ADMIN' || roleValue.startsWith('CHED ');
    const chedView = props.view === 'assignment' ? 'assignment' : 'create';
    const tables = props.tables ?? [];
    const participants = props.participants ?? [];
    const events = props.events ?? [];

    const initialEventId = props.selected_event_id ? String(props.selected_event_id) : '';

    const tableForm = useForm({
        programme_id: initialEventId,
        table_number: '',
        capacity: '',
    });

    const [selectedEventId, setSelectedEventId] = React.useState<string>(initialEventId);
    const [capacityDrafts, setCapacityDrafts] = React.useState<Record<number, string>>({});
    const [tableNumberDrafts, setTableNumberDrafts] = React.useState<Record<number, string>>({});
    const [seatNumberDrafts, setSeatNumberDrafts] = React.useState<Record<number, string>>({});
    const hasHydrated = React.useRef(false);
    const selectedEvent = selectedEventId ? events.find((event) => String(event.id) === selectedEventId) : null;
    const selectedEventPhase = selectedEvent ? resolveEventPhase(selectedEvent, Date.now()) : null;
    const isEventClosed = selectedEventPhase === 'closed';

    React.useEffect(() => {
        const nextDrafts: Record<number, string> = {};
        const nextNumberDrafts: Record<number, string> = {};
        const nextSeatDrafts: Record<number, string> = {};
        tables.forEach((table) => {
            nextDrafts[table.id] = String(table.capacity ?? '');
            nextNumberDrafts[table.id] = table.table_number ?? '';
            table.assignments.forEach((assignment) => {
                nextSeatDrafts[assignment.id] = String(assignment.seat_number ?? '');
            });
        });
        setCapacityDrafts(nextDrafts);
        setTableNumberDrafts(nextNumberDrafts);
        setSeatNumberDrafts(nextSeatDrafts);
    }, [tables]);

    const chedBasePath = chedView === 'assignment' ? '/table-assignment/assignment' : '/table-assignment/create';

    React.useEffect(() => {
        if (!hasHydrated.current) {
            hasHydrated.current = true;
            return;
        }

        tableForm.reset('table_number', 'capacity');
        tableForm.clearErrors();
        const destination = isChedAdmin ? chedBasePath : '/table-assignment';
        router.get(destination, { event_id: selectedEventId || undefined }, { preserveScroll: true, preserveState: true, replace: true });
    }, [selectedEventId]);

    function submitTable(e: React.FormEvent) {
        e.preventDefault();
        if (!selectedEventId) {
            toast.error('Select an event before creating a table.');
            return;
        }

        tableForm.transform((data) => ({
            ...data,
            programme_id: selectedEventId,
        }));
        tableForm.post(ENDPOINTS.tables.store, {
            preserveScroll: true,
            onSuccess: () => {
                toast.success('Table added.');
                tableForm.reset();
            },
            onError: () => toast.error('Unable to add table.'),
        });
    }

    function updateTableInfo(tableId: number) {
        const capacity = Number(capacityDrafts[tableId]);
        const tableNumber = tableNumberDrafts[tableId]?.trim();

        if (!tableNumber) {
            toast.error('Enter a table name.');
            return;
        }
        if (!Number.isFinite(capacity) || capacity <= 0) {
            toast.error('Enter a valid capacity.');
            return;
        }

        router.patch(
            ENDPOINTS.tables.update(tableId),
            { table_number: tableNumber, capacity },
            {
                preserveScroll: true,
                onSuccess: () => toast.success('Table updated.'),
                onError: () => toast.error('Unable to update table.'),
            },
        );
    }

    function removeTable(tableId: number) {
        router.delete(ENDPOINTS.tables.destroy(tableId), {
            preserveScroll: true,
            onSuccess: () => toast.success('Table deleted.'),
            onError: () => toast.error('Unable to delete table.'),
        });
    }

    function removeAssignment(id: number) {
        router.delete(ENDPOINTS.assignments.destroy(id), {
            preserveScroll: true,
            onSuccess: () => toast.success('Participant removed from table.'),
            onError: () => toast.error('Unable to remove participant.'),
        });
    }

    const eventContextCard = (
        <Card>
            <CardHeader>
                <CardTitle className="text-base">Event Filter</CardTitle>
                <CardDescription></CardDescription>
            </CardHeader>
            <CardContent className="space-y-3">
                <div className="grid gap-3 md:grid-cols-[260px,1fr] md:items-center">
                    <div className="space-y-1">
                        <label className="text-sm font-medium text-slate-700 dark:text-slate-200">Event  <span className="text-[11px] font-semibold text-red-600"> *</span></label>
                        <SearchableDropdown
                            value={selectedEventId}
                            onValueChange={(v) => setSelectedEventId(v === 'none' ? '' : v)}
                            placeholder="Select event"
                            searchPlaceholder="Search events..."
                            emptyText="No events found."
                            disabled={events.length === 0}
                            items={
                                events.length === 0
                                    ? [{ value: 'none', label: 'No events available', disabled: true }]
                                    : [
                                          { value: '', label: 'Clear selection' },
                                          ...events.map((event) => {
                                              const phase = resolveEventPhase(event, Date.now());
                                              const when = event.starts_at
                                                  ? formatDateTime(event.starts_at)
                                                  : 'Schedule TBA';
                                              return {
                                                  value: String(event.id),
                                                  label: event.title,
                                                  description: `${phaseLabel(phase)} • ${when}`,
                                              };
                                          }),
                                      ]
                            }
                        />
                    </div>
                    <div className="flex flex-wrap items-center gap-2 text-sm text-slate-600 dark:text-slate-400">
                        {selectedEventId ? (
                            (() => {
                                if (!selectedEvent) return <span className="text-slate-500">Event details unavailable.</span>;
                                const phase = selectedEventPhase ?? 'closed';
                                return (
                                    <>
                                        <Badge className={phaseBadgeClass(phase)}>{phaseLabel(phase)}</Badge>
                                        <span className="text-slate-500">
                                            {selectedEvent.starts_at
                                                ? formatDateTime(selectedEvent.starts_at)
                                                : 'Schedule TBA'}
                                        </span>
                                    </>
                                );
                            })()
                        ) : (
                            <span className="text-slate-500">Choose an event to load tables and participants.</span>
                        )}
                    </div>
                </div>
                {isEventClosed ? (
                    <p className="text-sm text-rose-600">Table assignments are locked because this event is closed.</p>
                ) : null}
            </CardContent>
        </Card>
    );

    const createTableCard = (
        <Card>
            <CardHeader>
                <CardTitle className="text-base">Create Table</CardTitle>
                <CardDescription>Set up a new table with a number, capacity, and seat arrangement support.</CardDescription>
            </CardHeader>
            <CardContent>
                <form onSubmit={submitTable} className="space-y-4">
                    <div className="space-y-1">
                        <label className="text-sm font-medium text-slate-700 dark:text-slate-200">Table name  <span className="text-[11px] font-semibold text-red-600"> *</span></label>
                        <Input
                            type="text"
                            value={tableForm.data.table_number}
                            onChange={(e) => tableForm.setData('table_number', e.target.value)}
                            placeholder="e.g. Table 1"
                        />
                        {tableForm.errors.table_number ? (
                            <p className="text-xs text-rose-500">{tableForm.errors.table_number}</p>
                        ) : null}
                    </div>
                    <div className="space-y-1">
                        <label className="text-sm font-medium text-slate-700 dark:text-slate-200">Capacity  <span className="text-[11px] font-semibold text-red-600"> *</span></label>
                        <Input
                            type="number"
                            min={1}
                            value={tableForm.data.capacity}
                            onChange={(e) => tableForm.setData('capacity', e.target.value)}
                            placeholder="e.g. 8"
                        />
                        {tableForm.errors.capacity ? (
                            <p className="text-xs text-rose-500">{tableForm.errors.capacity}</p>
                        ) : null}
                    </div>
                    <Button type="submit" disabled={tableForm.processing} className={cn('w-full sm:w-auto', PRIMARY_BTN)}>
                        <Plus className="mr-2 h-4 w-4" />
                        Add table
                    </Button>
                </form>
            </CardContent>
        </Card>
    );

    // Flatten all assignments across all tables for the unified view
    const allAssignments = React.useMemo(() => {
        const result: Array<TableAssignment & { table_number: string; table_id: number; table_capacity: number }> = [];
        tables.forEach((table) => {
            table.assignments.forEach((assignment) => {
                result.push({
                    ...assignment,
                    table_number: table.table_number,
                    table_id: table.id,
                    table_capacity: table.capacity,
                });
            });
        });
        return result;
    }, [tables]);

    // Track inline table reassignment drafts
    const [tableDrafts, setTableDrafts] = React.useState<Record<number, string>>({});

    React.useEffect(() => {
        const next: Record<number, string> = {};
        allAssignments.forEach((a) => {
            next[a.id] = String(a.table_id);
        });
        setTableDrafts(next);
    }, [allAssignments]);

    // Helper: get CSRF token for fetch calls
    function getCsrfToken() {
        return document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') ?? '';
    }

    // Auto-unassign: batch-remove all excess assignments in one go when capacity is reduced
    const isAutoUnassigning = React.useRef(false);

    React.useEffect(() => {
        if (isAutoUnassigning.current) return;
        if (!selectedEventId || tables.length === 0) return;

        // Collect ALL excess assignment IDs across all over-capacity tables
        const excessIds: number[] = [];
        tables.forEach((t) => {
            if (t.assigned_count > t.capacity) {
                t.assignments.slice(t.capacity).forEach((a) => excessIds.push(a.id));
            }
        });
        if (excessIds.length === 0) return;

        isAutoUnassigning.current = true;
        const csrf = getCsrfToken();

        // Delete all excess assignments in parallel, then reload once
        Promise.all(
            excessIds.map((id) =>
                fetch(ENDPOINTS.assignments.destroy(id), {
                    method: 'DELETE',
                    headers: { 'X-CSRF-TOKEN': csrf, 'Accept': 'application/json', 'X-Requested-With': 'XMLHttpRequest' },
                }),
            ),
        )
            .then(() => {
                router.visit(window.location.href, { preserveScroll: true, preserveState: true, onFinish: () => { isAutoUnassigning.current = false; } });
            })
            .catch(() => {
                toast.error('Unable to remove excess assignments.');
                isAutoUnassigning.current = false;
            });
    }, [selectedEventId, tables]);

    // Manual auto-assign: admin clicks a button to distribute all unassigned participants in one go
    const [autoAssignRunning, setAutoAssignRunning] = React.useState(false);

    function triggerAutoAssign() {
        if (autoAssignRunning) return;
        if (!selectedEventId || isEventClosed || participants.length === 0 || tables.length === 0) {
            toast.error('No unassigned participants or no tables available.');
            return;
        }

        // Build assignment plan: distribute participants across tables
        const plan: Array<{ tableId: number; participantIds: number[] }> = [];
        let remaining = [...participants];

        for (const table of tables) {
            if (remaining.length === 0) break;
            const available = table.capacity - table.assigned_count;
            if (available <= 0) continue;
            const batch = remaining.splice(0, available);
            plan.push({ tableId: table.id, participantIds: batch.map((p) => p.id) });
        }

        if (plan.length === 0) {
            toast.error('All tables are full. Increase capacity or add a new table.');
            return;
        }

        setAutoAssignRunning(true);
        const csrf = getCsrfToken();

        // Execute all assignments in parallel, then reload once
        Promise.all(
            plan.map(({ tableId, participantIds }) =>
                fetch(ENDPOINTS.assignments.store, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrf,
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'X-Requested-With': 'XMLHttpRequest',
                    },
                    body: JSON.stringify({
                        programme_id: selectedEventId,
                        participant_table_id: String(tableId),
                        participant_ids: participantIds,
                    }),
                }),
            ),
        )
            .then((responses) => {
                const allOk = responses.every((r) => r.ok);
                if (allOk) {
                    toast.success(remaining.length > 0
                        ? `Assigned ${participants.length - remaining.length} participants. ${remaining.length} remain (tables full).`
                        : 'All participants have been assigned.');
                } else {
                    toast.error('Some assignments failed.');
                }
                router.visit(window.location.href, { preserveScroll: true, preserveState: true, onFinish: () => setAutoAssignRunning(false) });
            })
            .catch(() => {
                toast.error('Auto-assignment failed.');
                setAutoAssignRunning(false);
            });
    }


    function assignParticipantToTable(participantId: number, tableId: string) {
        if (!selectedEventId || isEventClosed) return;

        const targetTable = tables.find((t) => String(t.id) === tableId);
        if (!targetTable) return;

        if (targetTable.assigned_count >= targetTable.capacity) {
            toast.error(`${targetTable.table_number} is full (${targetTable.assigned_count}/${targetTable.capacity}).`);
            return;
        }

        router.post(
            ENDPOINTS.assignments.store,
            {
                programme_id: selectedEventId,
                participant_table_id: tableId,
                participant_ids: [participantId],
            },
            {
                preserveScroll: true,
                onSuccess: () => toast.success('Participant assigned to table.'),
                onError: () => toast.error('Unable to assign participant.'),
            },
        );
    }

    function reassignToTable(assignmentId: number, newTableId: string) {
        const current = allAssignments.find((a) => a.id === assignmentId);
        if (!current || String(current.table_id) === newTableId) return;

        const participantId = current.participant?.id;
        if (!participantId) return;

        // Check if the target table is full
        const targetTable = tables.find((t) => String(t.id) === newTableId);
        if (!targetTable) return;

        if (targetTable.assigned_count >= targetTable.capacity) {
            toast.error(`${targetTable.table_number} is full (${targetTable.assigned_count}/${targetTable.capacity}). Remove a participant first to free a seat.`);
            // Revert the dropdown
            setTableDrafts((prev) => ({ ...prev, [assignmentId]: String(current.table_id) }));
            return;
        }

        router.delete(ENDPOINTS.assignments.destroy(assignmentId), {
            preserveScroll: true,
            onSuccess: () => {
                router.post(
                    ENDPOINTS.assignments.store,
                    {
                        programme_id: selectedEventId,
                        participant_table_id: newTableId,
                        participant_ids: [participantId],
                    },
                    {
                        preserveScroll: true,
                        onSuccess: () => toast.success('Participant reassigned to new table.'),
                        onError: () => toast.error('Unable to reassign participant.'),
                    },
                );
            },
            onError: () => toast.error('Unable to reassign participant.'),
        });
    }

    function updateAssignmentSeatValidated(assignmentId: number, tableCapacity: number, tableId: number) {
        const seatNumber = Number(seatNumberDrafts[assignmentId]);

        if (!Number.isInteger(seatNumber) || seatNumber < 1) {
            toast.error('Enter a valid seat number.');
            return;
        }

        if (seatNumber > tableCapacity) {
            toast.error(`Seat number must be between 1 and ${tableCapacity}.`);
            return;
        }

        // Check if the seat is already taken by another participant on the same table
        const currentAssignment = allAssignments.find((a) => a.id === assignmentId);
        const currentSeat = currentAssignment?.seat_number;

        if (seatNumber === currentSeat) return; // no change

        const conflicting = allAssignments.find(
            (a) => a.table_id === tableId && a.seat_number === seatNumber && a.id !== assignmentId,
        );

        if (conflicting && currentSeat) {
            // Swap: give the conflicting participant the current seat
            router.patch(
                ENDPOINTS.assignments.update(conflicting.id),
                { seat_number: currentSeat },
                {
                    preserveScroll: true,
                    onSuccess: () => {
                        // Now update the original assignment
                        router.patch(
                            ENDPOINTS.assignments.update(assignmentId),
                            { seat_number: seatNumber },
                            {
                                preserveScroll: true,
                                onSuccess: () => toast.success(`Swapped seats: #${currentSeat} ↔ #${seatNumber}.`),
                                onError: () => toast.error('Unable to complete seat swap.'),
                            },
                        );
                    },
                    onError: () => toast.error('Unable to swap seats.'),
                },
            );
            return;
        }

        if (conflicting) {
            toast.error(`Seat #${seatNumber} is already taken on this table.`);
            return;
        }

        router.patch(
            ENDPOINTS.assignments.update(assignmentId),
            { seat_number: seatNumber },
            {
                preserveScroll: true,
                onSuccess: () => toast.success('Seat number updated.'),
                onError: () => toast.error('Unable to update seat number.'),
            },
        );
    }

    // Check if any table still has room — used to label unassigned rows
    const hasAvailableCapacity = tables.some((t) => t.capacity - t.assigned_count > 0);

    // Total counts for display
    const totalParticipants = allAssignments.length + participants.length;
    const totalCapacity = tables.reduce((sum, t) => sum + t.capacity, 0);

    // Search & filter state
    const [searchQuery, setSearchQuery] = React.useState('');
    const [tableFilter, setTableFilter] = React.useState<string>('all'); // 'all' | 'not_assigned' | table id

    const filteredAssignments = React.useMemo(() => {
        const q = searchQuery.toLowerCase().trim();
        return allAssignments.filter((a) => {
            // Table filter
            if (tableFilter !== 'all' && tableFilter !== 'not_assigned') {
                if (String(a.table_id) !== tableFilter) return false;
            }
            if (tableFilter === 'not_assigned') return false; // hide assigned when filtering "Not Assigned"
            // Search query
            if (!q) return true;
            const name = (a.participant?.full_name ?? '').toLowerCase();
            const role = (a.participant?.user_type?.name ?? '').toLowerCase();
            const table = a.table_number.toLowerCase();
            return name.includes(q) || role.includes(q) || table.includes(q);
        });
    }, [allAssignments, searchQuery, tableFilter]);

    const filteredParticipants = React.useMemo(() => {
        const q = searchQuery.toLowerCase().trim();
        return participants.filter((p) => {
            // Table filter — show unassigned only when 'all' or 'not_assigned'
            if (tableFilter !== 'all' && tableFilter !== 'not_assigned') return false;
            // Search query
            if (!q) return true;
            const name = p.full_name.toLowerCase();
            const role = (p.user_type?.name ?? '').toLowerCase();
            return name.includes(q) || role.includes(q);
        });
    }, [participants, searchQuery, tableFilter]);

    const assignParticipantsCard = (
        <Card>
            <CardHeader>
                <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
                    <div>
                        <CardTitle className="text-base">Assign Participants</CardTitle>
                        <CardDescription>Manage table assignments, seat numbers, and track seating.</CardDescription>
                    </div>
                    {participants.length > 0 && !isEventClosed ? (
                        <Button
                            type="button"
                            size="sm"
                            className={cn(PRIMARY_BTN)}
                            onClick={triggerAutoAssign}
                            disabled={autoAssignRunning || !hasAvailableCapacity}
                        >
                            <Wand2 className="mr-2 h-4 w-4" />
                            {autoAssignRunning ? 'Assigning...' : 'Auto-assign'}
                        </Button>
                    ) : null}
                </div>
            </CardHeader>
            <CardContent className="space-y-6">
                {/* Summary bar */}
                <div className="flex flex-wrap items-center gap-4 text-sm">
                    <div className="flex items-center gap-2 text-slate-600 dark:text-slate-400">
                        <Users2 className="h-4 w-4" />
                        <span>{totalParticipants} total participant(s)</span>
                    </div>
                    <Badge className={allAssignments.length === totalParticipants ? 'bg-emerald-100 text-emerald-700' : 'bg-amber-100 text-amber-700'}>
                        {allAssignments.length} assigned
                    </Badge>
                    {participants.length > 0 ? (
                        <Badge className="bg-slate-100 text-slate-600">
                            {participants.length} not assigned
                        </Badge>
                    ) : null}
                    <span className="text-xs text-slate-500">
                        Capacity: {allAssignments.length}/{totalCapacity} across {tables.length} table(s)
                    </span>
                </div>

                {/* Search & filter bar */}
                <div className="flex flex-col gap-3 sm:flex-row sm:items-center">
                    <div className="relative flex-1">
                        <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
                        <Input
                            type="text"
                            placeholder="Search by name, role, or table..."
                            value={searchQuery}
                            onChange={(e) => setSearchQuery(e.target.value)}
                            className="pl-9"
                        />
                    </div>
                    <div className="w-full sm:w-[200px]">
                        <SearchableDropdown
                            value={tableFilter}
                            onValueChange={setTableFilter}
                            placeholder="Filter by table"
                            searchPlaceholder="Search tables..."
                            emptyText="No tables."
                            buttonClassName="h-9"
                            items={[
                                { value: 'all', label: 'All tables' },
                                { value: 'not_assigned', label: 'Not Assigned' },
                                ...tables.map((t) => ({
                                    value: String(t.id),
                                    label: t.table_number,
                                    description: `${t.assigned_count}/${t.capacity} seats`,
                                })),
                            ]}
                        />
                    </div>
                </div>

                {/* All assignments table */}
                <div className="overflow-hidden rounded-lg border border-slate-200 dark:border-slate-800">
                    <Table>
                        <TableHeader>
                            <TableRow className="bg-slate-50 dark:bg-slate-900/40">
                                <TableHead>Participant</TableHead>
                                <TableHead className="w-[180px]">Table</TableHead>
                                <TableHead className="w-[110px]">Seat no.</TableHead>
                                <TableHead className="w-[140px]">Role</TableHead>
                                <TableHead className="w-[180px]">Assigned at</TableHead>
                                <TableHead className="w-[80px] text-right">Action</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {filteredAssignments.length === 0 && filteredParticipants.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={6} className="py-6 text-center text-sm text-slate-500">
                                        {searchQuery || tableFilter !== 'all'
                                            ? 'No participants match your search or filter.'
                                            : 'No participants for this event.'}
                                    </TableCell>
                                </TableRow>
                            ) : (
                                <>
                                    {/* Assigned participants */}
                                    {filteredAssignments.map((assignment) => (
                                        <TableRow key={`assigned-${assignment.id}`}>
                                            <TableCell>
                                                <div className="flex items-center gap-3">
                                                    {assignment.participant?.country ? (
                                                        <FlagThumb
                                                            country={assignment.participant.country}
                                                            size={22}
                                                        />
                                                    ) : null}
                                                    <div className="min-w-0">
                                                        <div className="truncate font-medium text-slate-900 dark:text-slate-100">
                                                            {assignment.participant?.full_name ?? 'Participant removed'}
                                                        </div>
                                                        <div className="text-xs text-slate-500">
                                                            {assignment.participant?.country?.name ?? 'Country unavailable'}
                                                        </div>
                                                    </div>
                                                </div>
                                            </TableCell>
                                            <TableCell>
                                                <SearchableDropdown
                                                    value={tableDrafts[assignment.id] ?? String(assignment.table_id)}
                                                    onValueChange={(v) => {
                                                        setTableDrafts((prev) => ({ ...prev, [assignment.id]: v }));
                                                        reassignToTable(assignment.id, v);
                                                    }}
                                                    placeholder="Table"
                                                    searchPlaceholder="Search tables..."
                                                    emptyText="No tables."
                                                    disabled={isEventClosed}
                                                    buttonClassName="h-8 text-xs"
                                                    items={tables.map((table) => {
                                                        const left = table.capacity - table.assigned_count;
                                                        return {
                                                            value: String(table.id),
                                                            label: table.table_number,
                                                            description: left > 0 ? `${left} seats left` : 'Full',
                                                        };
                                                    })}
                                                />
                                            </TableCell>
                                            <TableCell>
                                                <div className="flex items-center gap-2">
                                                    <Input
                                                        type="number"
                                                        min={1}
                                                        max={assignment.table_capacity}
                                                        value={seatNumberDrafts[assignment.id] ?? ''}
                                                        onChange={(e) =>
                                                            setSeatNumberDrafts((prev) => ({
                                                                ...prev,
                                                                [assignment.id]: e.target.value,
                                                            }))
                                                        }
                                                        className="h-8 w-20"
                                                        disabled={isEventClosed}
                                                    />
                                                    <Button
                                                        type="button"
                                                        size="sm"
                                                        variant="outline"
                                                        onClick={() => updateAssignmentSeatValidated(assignment.id, assignment.table_capacity, assignment.table_id)}
                                                        disabled={isEventClosed}
                                                    >
                                                        Save
                                                    </Button>
                                                </div>
                                            </TableCell>
                                            <TableCell>
                                                <Badge variant="secondary">
                                                    {assignment.participant?.user_type?.name ?? 'Unassigned role'}
                                                </Badge>
                                            </TableCell>
                                            <TableCell className="text-slate-700 dark:text-slate-300">
                                                {formatDateTime(assignment.assigned_at)}
                                            </TableCell>
                                            <TableCell className="text-right">
                                                <Button
                                                    type="button"
                                                    size="sm"
                                                    variant="ghost"
                                                    onClick={() => removeAssignment(assignment.id)}
                                                    aria-label="Remove participant"
                                                    disabled={isEventClosed}
                                                >
                                                    <XCircle className="h-4 w-4 text-rose-500" />
                                                </Button>
                                            </TableCell>
                                        </TableRow>
                                    ))}

                                    {/* Unassigned participants */}
                                    {filteredParticipants.map((participant) => (
                                        <TableRow key={`unassigned-${participant.id}`}>
                                            <TableCell>
                                                <div className="flex items-center gap-3">
                                                    {participant.country ? (
                                                        <FlagThumb country={participant.country} size={22} />
                                                    ) : null}
                                                    <div className="min-w-0">
                                                        <div className="truncate font-medium text-slate-900 dark:text-slate-100">
                                                            {participant.full_name}
                                                        </div>
                                                        <div className="text-xs text-slate-500">
                                                            {participant.country?.name ?? 'Country unavailable'}
                                                        </div>
                                                    </div>
                                                </div>
                                            </TableCell>
                                            <TableCell>
                                                <SearchableDropdown
                                                    value=""
                                                    onValueChange={(v) => {
                                                        if (v) assignParticipantToTable(participant.id, v);
                                                    }}
                                                    placeholder="Select table"
                                                    searchPlaceholder="Search tables..."
                                                    emptyText="No tables."
                                                    disabled={isEventClosed}
                                                    buttonClassName="h-8 text-xs"
                                                    items={tables.map((table) => {
                                                        const left = table.capacity - table.assigned_count;
                                                        return {
                                                            value: String(table.id),
                                                            label: table.table_number,
                                                            description: left > 0 ? `${left} seats left` : 'Full',
                                                            disabled: left <= 0,
                                                        };
                                                    })}
                                                />
                                            </TableCell>
                                            <TableCell>
                                                <span className="text-xs text-slate-400">—</span>
                                            </TableCell>
                                            <TableCell>
                                                <Badge variant="secondary">
                                                    {participant.user_type?.name ?? 'Unassigned role'}
                                                </Badge>
                                            </TableCell>
                                            <TableCell>
                                                <span className="text-xs text-slate-400">—</span>
                                            </TableCell>
                                            <TableCell />
                                        </TableRow>
                                    ))}
                                </>
                            )}
                        </TableBody>
                    </Table>
                </div>
            </CardContent>
        </Card>
    );

    return (
        <AppLayout breadcrumbs={breadcrumbs}>
            <Head title="Table Assignment" />

            <div className="flex h-full flex-1 flex-col gap-4 overflow-x-auto rounded-xl p-4">
                <div className="space-y-2">
                    <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
                        <div className="flex flex-col gap-1">
                            <div className="flex items-center gap-2">
                                <TableIcon className="h-5 w-5 text-[#00359c]" />
                                <h1 className="text-xl font-semibold tracking-tight text-slate-900 dark:text-slate-100">
                                    {isChedAdmin && chedView === 'create' ? 'Table Management' : 'Table Assignment'}
                                </h1>
                            </div>
                            <p className="text-sm text-slate-600 dark:text-slate-400">
                                {isChedAdmin && chedView === 'create'
                                    ? 'Create tables, set capacities, and review seating plans.'
                                    : 'Assign participants to tables, manage capacities, and track seating.'}
                            </p>
                        </div>
                    </div>

              
                </div>

                {isChedAdmin ? (
                    chedView === 'assignment' ? (
                        <>
                            <div className="grid gap-6">
                                <Card>
                                    <CardHeader>
                                        <CardTitle className="text-base">Event filter</CardTitle>
                                        <CardDescription>Filter assignments by event.</CardDescription>
                                    </CardHeader>
                                    <CardContent className="space-y-3">
                                        <div className="grid gap-3 md:grid-cols-[260px,1fr] md:items-center">
                                            <div className="space-y-1">
                                                <label className="text-sm font-medium text-slate-700 dark:text-slate-200">
                                                    Event  <span className="text-[11px] font-semibold text-red-600"> *</span>
                                                </label>
                                                <SearchableDropdown
                                                    value={selectedEventId}
                                                    onValueChange={(v) => setSelectedEventId(v === 'none' ? '' : v)}
                                                    placeholder="Select event"
                                                    searchPlaceholder="Search events..."
                                                    emptyText="No events found."
                                                    disabled={events.length === 0}
                                                    items={
                                                        events.length === 0
                                                            ? [{ value: 'none', label: 'No events available', disabled: true }]
                                                            : [
                                                                  { value: '', label: 'Clear selection' },
                                                                  ...events.map((event) => {
                                                                      const phase = resolveEventPhase(event, Date.now());
                                                                      const when = event.starts_at
                                                                          ? formatDateTime(event.starts_at)
                                                                          : 'Schedule TBA';
                                                                      return {
                                                                          value: String(event.id),
                                                                          label: event.title,
                                                                          description: `${phaseLabel(phase)} • ${when}`,
                                                                      };
                                                                  }),
                                                              ]
                                                    }
                                                />
                                            </div>
                                            <div className="flex flex-wrap items-center gap-2 text-sm text-slate-600 dark:text-slate-400">
                                                {selectedEventId ? (
                                                    (() => {
                                                        if (!selectedEvent) {
                                                            return <span className="text-slate-500">Event details unavailable.</span>;
                                                        }
                                                        const phase = selectedEventPhase ?? 'closed';
                                                        return (
                                                            <>
                                                                <Badge className={phaseBadgeClass(phase)}>{phaseLabel(phase)}</Badge>
                                                                <span className="text-slate-500">
                                                                    {selectedEvent.starts_at
                                                                        ? formatDateTime(selectedEvent.starts_at)
                                                                        : 'Schedule TBA'}
                                                                </span>
                                                            </>
                                                        );
                                                    })()
                                                ) : (
                                                    <span className="text-slate-500">
                                                        Choose an event to load tables and participants.
                                                    </span>
                                                )}
                                            </div>
                                        </div>
                                        {isEventClosed ? (
                                            <p className="text-sm text-rose-600">
                                                Table assignments are locked because this event is closed.
                                            </p>
                                        ) : null}
                                    </CardContent>
                                </Card>
                                {assignParticipantsCard}
                            </div>
                        </>
                    ) : (
                        <div className="grid gap-6">
                            {eventContextCard}
                            {createTableCard}
                            <Card>
                                <CardHeader>
                                    <CardTitle className="text-base">Created tables</CardTitle>
                                    <CardDescription>Review existing tables for the selected event.</CardDescription>
                                </CardHeader>
                                <CardContent>
                                    <div className="overflow-hidden rounded-lg border border-slate-200 dark:border-slate-800">
                                        <Table>
                                            <TableHeader>
                                                <TableRow className="bg-slate-50 dark:bg-slate-900/40">
                                                    <TableHead>Table name</TableHead>
                                                    <TableHead className="w-[160px]">Capacity</TableHead>
                                                    <TableHead className="w-[220px] text-right">Actions</TableHead>
                                                </TableRow>
                                            </TableHeader>
                                            <TableBody>
                                                {tables.length === 0 ? (
                                                    <TableRow>
                                                        <TableCell colSpan={3} className="py-6 text-center text-sm text-slate-500">
                                                            No tables created yet.
                                                        </TableCell>
                                                    </TableRow>
                                                ) : (
                                                    tables.map((table) => (
                                                        <TableRow key={table.id}>
                                                            <TableCell>
                                                                <Input
                                                                    value={tableNumberDrafts[table.id] ?? ''}
                                                                    onChange={(e) =>
                                                                        setTableNumberDrafts((prev) => ({
                                                                            ...prev,
                                                                            [table.id]: e.target.value,
                                                                        }))
                                                                    }
                                                                />
                                                            </TableCell>
                                                            <TableCell>
                                                                <Input
                                                                    type="number"
                                                                    min={1}
                                                                    value={capacityDrafts[table.id] ?? ''}
                                                                    onChange={(e) =>
                                                                        setCapacityDrafts((prev) => ({
                                                                            ...prev,
                                                                            [table.id]: e.target.value,
                                                                        }))
                                                                    }
                                                                />
                                                            </TableCell>
                                                            <TableCell className="text-right">
                                                                <div className="flex flex-wrap justify-end gap-2">
                                                                    <Button
                                                                        type="button"
                                                                        variant="outline"
                                                                        onClick={() => updateTableInfo(table.id)}
                                                                    >
                                                                        Update
                                                                    </Button>
                                                                    <Button
                                                                        type="button"
                                                                        variant="ghost"
                                                                        className="text-rose-600 hover:text-rose-700"
                                                                        onClick={() => removeTable(table.id)}
                                                                    >
                                                                        Delete
                                                                    </Button>
                                                                </div>
                                                            </TableCell>
                                                        </TableRow>
                                                    ))
                                                )}
                                            </TableBody>
                                        </Table>
                                    </div>
                                </CardContent>
                            </Card>
                        </div>
                    )
                ) : (
                    <>
                        <div className="grid gap-6">
                            {eventContextCard}
                            {createTableCard}
                            {assignParticipantsCard}
                        </div>
                    </>
                )}
            </div>
        </AppLayout>
    );
}

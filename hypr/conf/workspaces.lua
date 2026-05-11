hl.workspace_rule({
    workspace = "1",
    monitor = "DP-1",
    default = true,
    persistent = true
})

for i = 2, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-1",
        persistent = true
    })
end

hl.workspace_rule({
    workspace = "6",
    monitor = "DP-2",
    default = true,
    persistent = true
})

for i = 6, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-2",
        persistent = true
    })
end

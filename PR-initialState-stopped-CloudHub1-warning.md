# PR Instructions: CloudHub 1.0 Warning for initialState="stopped" with Scheduler

**Objective:** Add a critical technical warning in `flow-component.adoc` regarding the use of `initialState="stopped"` on flows that contain a Scheduler component, specifically for CloudHub 1.0 deployments.

**File to modify (all branches):** `modules/ROOT/pages/flow-component.adoc`

---

## AsciiDoc Change (apply to each branch)

**Location:** In the Flow Configuration table, in the **Initial State (`initialState`)** row. Insert the following block *after* the existing Stopped paragraph and *before* the next table row (`| Max Concurrency`).

**Insert this block:**

```asciidoc
[WARNING]
====
For CloudHub 1.0 deployments, avoid setting `initialState="stopped"` on flows that contain a Scheduler. The scheduler gets stuck in a permanent "Running" state, and you can't manage it through Runtime Manager.
====
```

**Context (find this in the file):**

- **After:** The paragraph that ends with:  
  `When a flow is deployed with the initial state set to Stopped, the console output looks similar to this: \`Flow flow_component_ex has not been started (initial state = 'stopped')\`.`
- **Before:** The table row:  
  `| Max Concurrency (\`maxConcurrency\`) a| Optional...`

---

## Branch-Specific PR Checklist

| Branch | Base branch | Action |
|--------|-------------|--------|
| **v4.4**  | `v4.4`  | Create PR from your feature branch into `v4.4`  |
| **v4.5**  | `v4.5`  | Create PR from your feature branch into `v4.5`  |
| **v4.6**  | `v4.6`  | Create PR from your feature branch into `v4.6`  |
| **v4.7**  | `v4.7`  | Create PR from your feature branch into `v4.7`  |
| **v4.8**  | `v4.8`  | Create PR from your feature branch into `v4.8`  |
| **v4.9**  | `v4.9`  | Create PR from your feature branch into `v4.9`  |
| **v4.10** | `v4.10` | Create PR from your feature branch into `v4.10` |
| **v4.11** | `v4.11` | Create PR from your feature branch into `v4.11` |

**Note:** The same AsciiDoc edit applies to all branches. If the surrounding text (e.g., exact wording of the Initial State row) differs slightly on an older branch, place the warning in the same logical position: immediately after the description of the Stopped state and before the Max Concurrency row.

---

## Verification

- **Wording:** Unchanged across v4.4–v4.11; the bug and platform behavior are the same for all these runtimes.
- **Style:** Uses CX Style Guide–recommended AsciiDoc warning format: `[WARNING]` followed by a `====` delimited block.
- **Visibility:** The warning appears in the Flow Configuration section where users set Initial State, so it is seen when configuring flows for CloudHub 1.0.

---

## Exact Patch (for copy-paste or patch tool)

If the file on a branch matches the following, you can apply the patch. Otherwise, use the “Insert this block” instructions above.

```diff
 If you set the initial state to Stopped (`initialState="stopped"`), activate the flow after deployment. For hybrid standalone and Anypoint Platform PCE deployments, use xref:runtime-manager::flow-management.adoc[Runtime Manager] to activate the flow. For CloudHub and Anypoint Runtime Fabric deployments, flow management through Runtime Manager isn't supported. To activate the flow, redeploy the application or update the flow configuration to Started. When a flow is deployed with the initial state set to Stopped, the console output looks similar to this: `Flow flow_component_ex has not been started (initial state = 'stopped')`.
 
+[WARNING]
+====
+For CloudHub 1.0 deployments, avoid setting `initialState="stopped"` on flows that contain a Scheduler. The scheduler gets stuck in a permanent "Running" state, and you can't manage it through Runtime Manager.
+====
 | Max Concurrency (`maxConcurrency`) a| Optional. Sets the maximum number of concurrent messages that a flow can process.
```

# Globale Claude Code Regeln

## Grundregeln

1. **CLAUDE.md immer befolgen** - Lies und befolge IMMER die projekt-spezifische CLAUDE.md
2. **Skills aufrufen** - Rufe die passenden Skills auf BEVOR du Aktionen ausführst
3. **MCP Tools nutzen** - Verwende MCP-Tools anstatt manueller Workarounds

## Bevorzugte Sprache

- Antworte auf Deutsch, wenn ich auf Deutsch schreibe
- Code-Kommentare und technische Begriffe können auf Englisch bleiben

## Arbeitsweise

- Lies existierenden Code bevor du Änderungen vorschlägst
- Frage nach wenn Anforderungen unklar sind
- Keine unnötigen Änderungen - nur was angefragt wurde
- Halte dich an bestehende Patterns im Projekt

## Bei n8n-Projekten

Wenn das Projekt n8n-Workflows enthält:
- Rufe `n8n-mcp-tools-expert` Skill vor jeder Workflow-Operation
- Beachte die nodeType-Format-Unterschiede (nodes-base.* vs n8n-nodes-base.*)
- Webhook-Daten sind unter `.body`, nicht direkt unter `$json`

---
external help file: IAUtility-help.xml
online version: 
schema: 2.0.0
---

# Invoke-WebSearch

## SYNOPSIS
Do a quick search online

## SYNTAX

```
Invoke-WebSearch [-SearchQuery] <String> [[-SearchEngine] <String>]
```

## DESCRIPTION
Search anything using online search engine (Default: Google)

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Invoke-WebSearch 'Invoke-Automation'
```

Search Google for "Invoke-Automation"

## PARAMETERS

### -SearchQuery
Search Querry to be searched for

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SearchEngine
Name of Search Engine to be used

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: Google
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### System.String
The search query

## OUTPUTS

### None
Opens your default webbrowser with the search query

## NOTES
General notes

## RELATED LINKS


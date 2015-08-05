## Example Incorporation of Semantic Web Resource URIs in  ICAN Metadata##

### Reference 201-F03 ###

These examples use the concept of Coastal Erosion from the MIDA Coastal Erosion [Thesaurus][1] to annotate a dummy metadata field.

### Using `gco:CharacterString` syntax ###

```xml
	<gco:characterField>http://vocab.nerc.ac.uk/collection/A04/current/CoastalErosion/</gco:characterField>
```

### Using `xlink:href="http://..."` syntax ###

```xml
	<?xml version="1.0"?>
	<document xmlns="http://example.org/xmlns/2002/document" xmlns:xlink="http://www.w3.org/1999/xlink">
		<element xlink:href="http://vocab.nerc.ac.uk/collection/A04/current/CoastalErosion/"/>
	</document>
```

### Created by: ###
Adam Leadbetter

[1]: http://vocab.nerc.ac.uk/collection/A04/current/
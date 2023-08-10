# Generic properties

- Name
- Id
- Description

# Prerequisite properties

- InstallScript
- CheckScript
- Required

# Service properties

- Type
- ComposePath
- OptionalModules[] - array of service manifests
- AdditionalFiles[] - array of file urls
- Configs[] - array of object
  - Key
  - Required
  - Type: string, number, path, etc
  - DefaultValue
  - Description

# Stack properties

- Services[] - array of object
  - ManifestUrl
  - Required
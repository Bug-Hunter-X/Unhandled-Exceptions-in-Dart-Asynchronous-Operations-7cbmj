# Unhandled Exceptions in Dart Asynchronous Operations

This example showcases a common scenario in asynchronous Dart programming where exceptions are not handled properly, potentially leading to silent failures or unexpected application behavior.  The solution demonstrates best practices for exception handling in asynchronous functions.

## Bug Description

The `fetchData` function makes a network request. While it uses a `try-catch` block to handle potential errors, it `rethrows` the exception. This approach allows higher-level functions to handle failures appropriately instead of letting them go unnoticed.  However, it is essential that calling functions also handle these potential exceptions.
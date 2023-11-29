/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/enhancedenums_enhanced_enum_for_user_roles_base.dart';

/*
Practice Question 3: Enhanced Enum for User Roles

Question:

Create an enhanced enum UserRole with values Admin, Editor, Viewer.

Each enum value should have a permissions property, returning a 
List<String> representing the permissions associated with the role 
(e.g., Admin might have ['create', 'edit', 'delete', 'view']).

Add a method hasPermission(String permission) 
that checks if the role includes a specific permission.
 */

enum UserRole {
  Admin,
  Editor,
  Viewer;

  List<String> get permissions { 
    if(this == Admin){
      return ['create', 'edit', 'delete', 'view'];
    } else if(this == Editor){
      return ['edit', 'view'];
    } else {
      return ['view'];
    }
  }

  bool hasPermission(String permission) => permissions.contains(permission);
}
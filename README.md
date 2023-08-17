# Flutter Whatsapp Clone

Trying to recreate WhatsApp app with clean architeture.

# Clean code case study series #clean

# Introduction

Clean architecture is a set of organizing principles that can be used to design software solutions. It is a formal architecture that is less than 10 years old. clean architecture is based on core principles that must be kept intact and implemented correctly. It is scalable and appropriate for modern web and mobile applications.

Clean architecture constists of core layers, periphery layers, user interface and common layer

# ORGANISATION

## DOMAIN

### ENTITY

1. User : The user entity has a unique id, a name, a phone number, a profile picture and a status. A user can send and receive messages, create and join groups, make and recieve calls, and updated their profile and settings.
2. Message: The message entity has a unique id, a sender, a reciver, a content, a timestamp, and a status(sent, delivered, read). A message can be text, image, video, document, or location. A message can belong to a group or a direct chat.
3. Group: The group entity has a unique id, a name, an icon, a description, and a list of members. A group can have one or more admins who can manage the group settings and members. A group can send and recieve messages form its members.
4. Call: The call entity has a unique id, a caller, a callee, a type( voice or video), a duration, and a status( missed, answered, declined). A call can be made between two users or within a group

# References

[Understanding WhatsApp's Architecture and system design](https://www.cometchat.com/blog/whatsapps-architecture-and-system-design)

[clean Architecture tutorial : Design for enterprise-scale apps](https://www.educative.io/blog/clean-architecture-tutorial)

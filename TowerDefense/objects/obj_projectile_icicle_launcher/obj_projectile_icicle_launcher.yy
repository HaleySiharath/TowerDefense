{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_projectile_icicle_launcher",
  "spriteId": {
    "name": "spr_projectile_icicle_launcher",
    "path": "sprites/spr_projectile_icicle_launcher/spr_projectile_icicle_launcher.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_base_projectile",
    "path": "objects/obj_base_projectile/obj_base_projectile.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_base_enemy","path":"objects/obj_base_enemy/obj_base_enemy.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"radiusFrozen","varType":0,"value":"40","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"damage","path":"objects/obj_base_projectile/obj_base_projectile.yy",},"objectId":{"name":"obj_base_projectile","path":"objects/obj_base_projectile/obj_base_projectile.yy",},"value":"5",},
  ],
  "parent": {
    "name": "Projectiles",
    "path": "folders/Objects/Projectiles.yy",
  },
}
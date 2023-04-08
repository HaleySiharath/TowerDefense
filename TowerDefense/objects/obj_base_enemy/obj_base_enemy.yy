{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_base_enemy",
  "spriteId": {
    "name": "spr_placeholder_enemy",
    "path": "sprites/spr_placeholder_enemy/spr_placeholder_enemy.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemyId","varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemySpriteDown","varType":5,"value":"spr_placeholder_enemy_down","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMSprite",
      ],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemySpriteLeft","varType":5,"value":"spr_placeholder_enemy_left","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMSprite",
      ],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemySpriteRight","varType":5,"value":"spr_placeholder_enemy_right","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMSprite",
      ],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemySpriteUp","varType":5,"value":"spr_placeholder_enemy_up","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMSprite",
      ],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"pathSpeed","varType":1,"value":"2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"health","varType":1,"value":"100","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
}
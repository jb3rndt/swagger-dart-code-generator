// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'pet_service_json.enums.swagger.dart' as enums;
export 'pet_service_json.enums.swagger.dart';

part 'pet_service_json.swagger.chopper.dart';
part 'pet_service_json.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetServiceJson extends ChopperService {
  static Future<void> Function(Future<void> Function())? _handleConnection;

  static PetServiceJson create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
    Future<void> Function(Future<void> Function())? handleConnection,
  }) {
    _handleConnection = handleConnection;

    if (client != null) {
      return _$PetServiceJson(client);
    }

    final newClient = ChopperClient(
        services: [_$PetServiceJson()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://petstore.swagger.io/v2'));
    return _$PetServiceJson(newClient);
  }

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> petPost({
    required Pet? body,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _petPost(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPost(body: body, cacheControl: cacheControl);
  }

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  @chopper.Post(path: '/pet')
  Future<chopper.Response> _petPost({
    @Body() required Pet? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> petPut({
    required Pet? body,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _petPut(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPut(body: body, cacheControl: cacheControl);
  }

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  @chopper.Put(path: '/pet')
  Future<chopper.Response> _petPut({
    @Body() required Pet? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  Future<chopper.Response<List<Pet>>> petFindByStatusGet({
    required enums.PetFindByStatusGetStatus? status,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<List<Pet>>>? response;
      await _handleConnection!(() async {
        response = _petFindByStatusGet(
            status: status?.value?.toString(), cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petFindByStatusGet(
        status: status?.value?.toString(), cacheControl: cacheControl);
  }

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  @chopper.Get(path: '/pet/findByStatus')
  Future<chopper.Response<List<Pet>>> _petFindByStatusGet({
    @Query('status') required String? status,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  Future<chopper.Response<List<Pet>>> petFindByTagsGet({
    required List<String>? tags,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<List<Pet>>>? response;
      await _handleConnection!(() async {
        response = _petFindByTagsGet(tags: tags, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petFindByTagsGet(tags: tags, cacheControl: cacheControl);
  }

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  @chopper.Get(path: '/pet/findByTags')
  Future<chopper.Response<List<Pet>>> _petFindByTagsGet({
    @Query('tags') required List<String>? tags,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Find pet by ID
  ///@param petId ID of pet to return
  Future<chopper.Response<Pet>> petPetIdGet({
    required int? petId,
    ApiKey? apiKey,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<Pet>>? response;
      await _handleConnection!(() async {
        response = _petPetIdGet(
            petId: petId, apiKey: apiKey, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPetIdGet(
        petId: petId, apiKey: apiKey, cacheControl: cacheControl);
  }

  ///Find pet by ID
  ///@param petId ID of pet to return
  @chopper.Get(path: '/pet/{petId}')
  Future<chopper.Response<Pet>> _petPetIdGet({
    @Path('petId') required int? petId,
    @Header('api_key') ApiKey? apiKey,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  Future<chopper.Response> petPetIdPost({
    required int? petId,
    String? name,
    String? status,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _petPetIdPost(
            petId: petId,
            name: name,
            status: status,
            cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPetIdPost(
        petId: petId, name: name, status: status, cacheControl: cacheControl);
  }

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  @chopper.Post(
    path: '/pet/{petId}',
    optionalBody: true,
  )
  Future<chopper.Response> _petPetIdPost({
    @Path('petId') required int? petId,
    @Field('name') String? name,
    @Field('status') String? status,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  Future<chopper.Response> petPetIdDelete({
    String? apiKey,
    required int? petId,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _petPetIdDelete(
            apiKey: apiKey, petId: petId, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPetIdDelete(
        apiKey: apiKey, petId: petId, cacheControl: cacheControl);
  }

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  @chopper.Delete(path: '/pet/{petId}')
  Future<chopper.Response> _petPetIdDelete({
    @Header('api_key') String? apiKey,
    @Path('petId') required int? petId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  Future<chopper.Response<ApiResponse>> petPetIdUploadImagePost({
    required int? petId,
    String? additionalMetadata,
    List<int>? file,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<ApiResponse>>? response;
      await _handleConnection!(() async {
        response = _petPetIdUploadImagePost(
            petId: petId,
            additionalMetadata: additionalMetadata,
            file: file,
            cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _petPetIdUploadImagePost(
        petId: petId,
        additionalMetadata: additionalMetadata,
        file: file,
        cacheControl: cacheControl);
  }

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  @chopper.Post(
    path: '/pet/{petId}/uploadImage',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResponse>> _petPetIdUploadImagePost({
    @Path('petId') required int? petId,
    @Field('additionalMetadata') String? additionalMetadata,
    @Field('file') List<int>? file,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Returns pet inventories by status
  Future<chopper.Response<Object>> storeInventoryGet({
    ApiKey? apiKey,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response<Object>>? response;
      await _handleConnection!(() async {
        response =
            _storeInventoryGet(apiKey: apiKey, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _storeInventoryGet(apiKey: apiKey, cacheControl: cacheControl);
  }

  ///Returns pet inventories by status
  @chopper.Get(path: '/store/inventory')
  Future<chopper.Response<Object>> _storeInventoryGet({
    @Header('api_key') ApiKey? apiKey,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  Future<chopper.Response<Order>> storeOrderPost({
    required Order? body,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<Order>>? response;
      await _handleConnection!(() async {
        response = _storeOrderPost(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _storeOrderPost(body: body, cacheControl: cacheControl);
  }

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  @chopper.Post(path: '/store/order')
  Future<chopper.Response<Order>> _storeOrderPost({
    @Body() required Order? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  Future<chopper.Response<Order>> storeOrderOrderIdGet({
    required int? orderId,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<Order>>? response;
      await _handleConnection!(() async {
        response =
            _storeOrderOrderIdGet(orderId: orderId, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _storeOrderOrderIdGet(orderId: orderId, cacheControl: cacheControl);
  }

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  @chopper.Get(path: '/store/order/{orderId}')
  Future<chopper.Response<Order>> _storeOrderOrderIdGet({
    @Path('orderId') required int? orderId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  Future<chopper.Response> storeOrderOrderIdDelete({
    required int? orderId,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _storeOrderOrderIdDelete(
            orderId: orderId, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _storeOrderOrderIdDelete(
        orderId: orderId, cacheControl: cacheControl);
  }

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  @chopper.Delete(path: '/store/order/{orderId}')
  Future<chopper.Response> _storeOrderOrderIdDelete({
    @Path('orderId') required int? orderId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Create user
  ///@param body Created user object
  Future<chopper.Response> userPost({
    required User? body,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _userPost(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userPost(body: body, cacheControl: cacheControl);
  }

  ///Create user
  ///@param body Created user object
  @chopper.Post(path: '/user')
  Future<chopper.Response> _userPost({
    @Body() required User? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> userCreateWithArrayPost({
    required List<User>? body,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response =
            _userCreateWithArrayPost(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userCreateWithArrayPost(body: body, cacheControl: cacheControl);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @chopper.Post(path: '/user/createWithArray')
  Future<chopper.Response> _userCreateWithArrayPost({
    @Body() required List<User>? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> userCreateWithListPost({
    required List<User>? body,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response =
            _userCreateWithListPost(body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userCreateWithListPost(body: body, cacheControl: cacheControl);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @chopper.Post(path: '/user/createWithList')
  Future<chopper.Response> _userCreateWithListPost({
    @Body() required List<User>? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  Future<chopper.Response<String>> userLoginGet({
    required String? username,
    required String? password,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response<String>>? response;
      await _handleConnection!(() async {
        response = _userLoginGet(
            username: username, password: password, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userLoginGet(
        username: username, password: password, cacheControl: cacheControl);
  }

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  @chopper.Get(path: '/user/login')
  Future<chopper.Response<String>> _userLoginGet({
    @Query('username') required String? username,
    @Query('password') required String? password,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Logs out current logged in user session
  Future<chopper.Response> userLogoutGet({String? cacheControl}) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _userLogoutGet(cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userLogoutGet(cacheControl: cacheControl);
  }

  ///Logs out current logged in user session
  @chopper.Get(path: '/user/logout')
  Future<chopper.Response> _userLogoutGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  Future<chopper.Response<User>> userUsernameGet({
    required String? username,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response<User>>? response;
      await _handleConnection!(() async {
        response =
            _userUsernameGet(username: username, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userUsernameGet(username: username, cacheControl: cacheControl);
  }

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  @chopper.Get(path: '/user/{username}')
  Future<chopper.Response<User>> _userUsernameGet({
    @Path('username') required String? username,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  Future<chopper.Response> userUsernamePut({
    required String? username,
    required User? body,
    String? cacheControl,
  }) async {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response = _userUsernamePut(
            username: username, body: body, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userUsernamePut(
        username: username, body: body, cacheControl: cacheControl);
  }

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  @chopper.Put(path: '/user/{username}')
  Future<chopper.Response> _userUsernamePut({
    @Path('username') required String? username,
    @Body() required User? body,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Delete user
  ///@param username The name that needs to be deleted
  Future<chopper.Response> userUsernameDelete({
    required String? username,
    String? cacheControl,
  }) async {
    if (_handleConnection != null) {
      Future<chopper.Response>? response;
      await _handleConnection!(() async {
        response =
            _userUsernameDelete(username: username, cacheControl: cacheControl);
        await response;
      });
      return response!;
    }
    return _userUsernameDelete(username: username, cacheControl: cacheControl);
  }

  ///Delete user
  ///@param username The name that needs to be deleted
  @chopper.Delete(path: '/user/{username}')
  Future<chopper.Response> _userUsernameDelete({
    @Path('username') required String? username,
    @Header('Cache-Control') String? cacheControl,
  });
}

class LocalDateTimeConverter implements json.JsonConverter<DateTime, String> {
  const LocalDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toString();
}

class OpenApiException implements Exception {
  const OpenApiException(this.error);

  final Object error;

  @override
  String toString() => 'OpenApiException: ${error.toString()}';
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class Order {
  Order({
    this.id,
    this.petId,
    this.quantity,
    this.shipDate,
    this.status,
    this.complete,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'petId', includeIfNull: false)
  int? petId;
  @JsonKey(name: 'quantity', includeIfNull: false)
  int? quantity;
  @JsonKey(name: 'shipDate', includeIfNull: false)
  DateTime? shipDate;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  enums.OrderStatus? status;
  @JsonKey(name: 'complete', includeIfNull: false, defaultValue: false)
  bool? complete;
  static const fromJsonFactory = _$OrderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.shipDate, shipDate) ||
                const DeepCollectionEquality()
                    .equals(other.shipDate, shipDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(petId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(shipDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(complete) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {int? id,
      int? petId,
      int? quantity,
      DateTime? shipDate,
      enums.OrderStatus? status,
      bool? complete}) {
    return Order(
        id: id ?? this.id,
        petId: petId ?? this.petId,
        quantity: quantity ?? this.quantity,
        shipDate: shipDate ?? this.shipDate,
        status: status ?? this.status,
        complete: complete ?? this.complete);
  }

  Order copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<int?>? petId,
      Wrapped<int?>? quantity,
      Wrapped<DateTime?>? shipDate,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<bool?>? complete}) {
    return Order(
        id: (id != null ? id.value : this.id),
        petId: (petId != null ? petId.value : this.petId),
        quantity: (quantity != null ? quantity.value : this.quantity),
        shipDate: (shipDate != null ? shipDate.value : this.shipDate),
        status: (status != null ? status.value : this.status),
        complete: (complete != null ? complete.value : this.complete));
  }
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class Category {
  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  static const fromJsonFactory = _$CategoryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CategoryExtension on Category {
  Category copyWith({int? id, String? name}) {
    return Category(id: id ?? this.id, name: name ?? this.name);
  }

  Category copyWithWrapped({Wrapped<int?>? id, Wrapped<String?>? name}) {
    return Category(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class User {
  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  String? username;
  @JsonKey(name: 'firstName', includeIfNull: false, defaultValue: '')
  String? firstName;
  @JsonKey(name: 'lastName', includeIfNull: false, defaultValue: '')
  String? lastName;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  String? email;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  String? password;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  String? phone;
  @JsonKey(name: 'userStatus', includeIfNull: false)
  int? userStatus;
  static const fromJsonFactory = _$UserFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(userStatus) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? phone,
      int? userStatus}) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        userStatus: userStatus ?? this.userStatus);
  }

  User copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? password,
      Wrapped<String?>? phone,
      Wrapped<int?>? userStatus}) {
    return User(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        phone: (phone != null ? phone.value : this.phone),
        userStatus: (userStatus != null ? userStatus.value : this.userStatus));
  }
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class Tag {
  Tag({
    this.id,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  static const toJsonFactory = _$TagToJson;
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  static const fromJsonFactory = _$TagFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tag &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $TagExtension on Tag {
  Tag copyWith({int? id, String? name}) {
    return Tag(id: id ?? this.id, name: name ?? this.name);
  }

  Tag copyWithWrapped({Wrapped<int?>? id, Wrapped<String?>? name}) {
    return Tag(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class Pet {
  Pet({
    this.id,
    this.category,
    this.name,
    this.photoUrls,
    this.tags,
    this.status,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  static const toJsonFactory = _$PetToJson;
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  int? id;
  @JsonKey(name: 'category', includeIfNull: false)
  Category? category;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  String? name;
  @JsonKey(name: 'photoUrls', includeIfNull: false)
  List<String>? photoUrls;
  @JsonKey(name: 'tags', includeIfNull: false)
  List<Tag>? tags;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: petStatusToJson,
    fromJson: petStatusFromJson,
  )
  enums.PetStatus? status;
  static const fromJsonFactory = _$PetFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrls, photoUrls) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrls, photoUrls)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrls) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $PetExtension on Pet {
  Pet copyWith(
      {int? id,
      Category? category,
      String? name,
      List<String>? photoUrls,
      List<Tag>? tags,
      enums.PetStatus? status}) {
    return Pet(
        id: id ?? this.id,
        category: category ?? this.category,
        name: name ?? this.name,
        photoUrls: photoUrls ?? this.photoUrls,
        tags: tags ?? this.tags,
        status: status ?? this.status);
  }

  Pet copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Category?>? category,
      Wrapped<String?>? name,
      Wrapped<List<String>?>? photoUrls,
      Wrapped<List<Tag>?>? tags,
      Wrapped<enums.PetStatus?>? status}) {
    return Pet(
        id: (id != null ? id.value : this.id),
        category: (category != null ? category.value : this.category),
        name: (name != null ? name.value : this.name),
        photoUrls: (photoUrls != null ? photoUrls.value : this.photoUrls),
        tags: (tags != null ? tags.value : this.tags),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
@LocalDateTimeConverter()
class ApiResponse {
  ApiResponse({
    this.code,
    this.type,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  static const toJsonFactory = _$ApiResponseToJson;
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @JsonKey(name: 'code', includeIfNull: false)
  int? code;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  String? type;
  @JsonKey(name: 'message', includeIfNull: false, defaultValue: '')
  String? message;
  static const fromJsonFactory = _$ApiResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiResponseExtension on ApiResponse {
  ApiResponse copyWith({int? code, String? type, String? message}) {
    return ApiResponse(
        code: code ?? this.code,
        type: type ?? this.type,
        message: message ?? this.message);
  }

  ApiResponse copyWithWrapped(
      {Wrapped<int?>? code,
      Wrapped<String?>? type,
      Wrapped<String?>? message}) {
    return ApiResponse(
        code: (code != null ? code.value : this.code),
        type: (type != null ? type.value : this.type),
        message: (message != null ? message.value : this.message));
  }
}

String? orderStatusToJson(enums.OrderStatus? orderStatus) {
  return orderStatus?.value;
}

enums.OrderStatus orderStatusFromJson(
  Object? orderStatus, [
  enums.OrderStatus? defaultValue,
]) {
  return enums.OrderStatus.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          orderStatus?.toString()?.toLowerCase()) ??
      defaultValue ??
      enums.OrderStatus.swaggerGeneratedUnknown;
}

List<String> orderStatusListToJson(List<enums.OrderStatus>? orderStatus) {
  if (orderStatus == null) {
    return [];
  }

  return orderStatus.map((e) => e.value!).toList();
}

List<enums.OrderStatus> orderStatusListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue ?? [];
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

List<enums.OrderStatus>? orderStatusNullableListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue;
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

String? petStatusToJson(enums.PetStatus? petStatus) {
  return petStatus?.value;
}

enums.PetStatus petStatusFromJson(
  Object? petStatus, [
  enums.PetStatus? defaultValue,
]) {
  return enums.PetStatus.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          petStatus?.toString()?.toLowerCase()) ??
      defaultValue ??
      enums.PetStatus.swaggerGeneratedUnknown;
}

List<String> petStatusListToJson(List<enums.PetStatus>? petStatus) {
  if (petStatus == null) {
    return [];
  }

  return petStatus.map((e) => e.value!).toList();
}

List<enums.PetStatus> petStatusListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue ?? [];
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

List<enums.PetStatus>? petStatusNullableListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue;
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

String? petFindByStatusGetStatusToJson(
    enums.PetFindByStatusGetStatus? petFindByStatusGetStatus) {
  return petFindByStatusGetStatus?.value;
}

enums.PetFindByStatusGetStatus petFindByStatusGetStatusFromJson(
  Object? petFindByStatusGetStatus, [
  enums.PetFindByStatusGetStatus? defaultValue,
]) {
  return enums.PetFindByStatusGetStatus.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          petFindByStatusGetStatus?.toString()?.toLowerCase()) ??
      defaultValue ??
      enums.PetFindByStatusGetStatus.swaggerGeneratedUnknown;
}

List<String> petFindByStatusGetStatusListToJson(
    List<enums.PetFindByStatusGetStatus>? petFindByStatusGetStatus) {
  if (petFindByStatusGetStatus == null) {
    return [];
  }

  return petFindByStatusGetStatus.map((e) => e.value!).toList();
}

List<enums.PetFindByStatusGetStatus> petFindByStatusGetStatusListFromJson(
  List? petFindByStatusGetStatus, [
  List<enums.PetFindByStatusGetStatus>? defaultValue,
]) {
  if (petFindByStatusGetStatus == null) {
    return defaultValue ?? [];
  }

  return petFindByStatusGetStatus
      .map((e) => petFindByStatusGetStatusFromJson(e.toString()))
      .toList();
}

List<enums.PetFindByStatusGetStatus>?
    petFindByStatusGetStatusNullableListFromJson(
  List? petFindByStatusGetStatus, [
  List<enums.PetFindByStatusGetStatus>? defaultValue,
]) {
  if (petFindByStatusGetStatus == null) {
    return defaultValue;
  }

  return petFindByStatusGetStatus
      .map((e) => petFindByStatusGetStatusFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}

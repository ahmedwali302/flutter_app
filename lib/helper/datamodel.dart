

import 'dart:convert';

Test testFromJson(String str) => Test.fromJson(json.decode(str));


class Test {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Data> data;

    Test({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
    });

    factory Test.fromJson(Map<String, dynamic> json) => Test(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
    );

    
}

class Data {
    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    Data({
        this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.avatar,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

   
}

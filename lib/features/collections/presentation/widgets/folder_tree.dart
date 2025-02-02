import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class FolderTree extends StatelessWidget {
  const FolderTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 25),
      height: mqHeigth(context, 100) - topbarHeight,
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          ),
        )
      ),
      child: ApiList()
    );
  }
}

class ApiList extends StatelessWidget {
  final List<ApiFolder> folders = [
    ApiFolder("Oriapp", [
      ApiEndpoint("POST", "/login"),
      ApiEndpoint("POST", "/logout"),
      ApiEndpoint("GET", "/negocios"),
      ApiEndpoint("GET", "/locales"),
      ApiEndpoint("GET", "/almacenes"),
      ApiEndpoint("GET", "/categorias"),
      ApiFolder("Catálogo", [
        ApiEndpoint("POST", "/catalogo-todos"),
        ApiEndpoint("POST", "/catalogo-codigo"),
        ApiEndpoint("POST", "/catalogo-nombre"),
        ApiEndpoint("POST", "/catalogo-filtro"),
      ]),
      ApiEndpoint("POST", "/vendedores"),
      ApiEndpoint("POST", "/mostrar-igv"),
      ApiEndpoint("POST", "/insertar-orden"),
      ApiFolder("Órdenes", [
        ApiEndpoint("GET", "/ordenes"),
        ApiEndpoint("GET", "/detalle-orden"),
      ]),
      ApiEndpoint("POST", "/clientes"),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: folders.map((folder) => buildFolder(folder)).toList(),
    );
  }

  Widget buildFolder(ApiFolder folder) {
    return ExpansionTile(
      iconColor: Colors.white,
      collapsedIconColor: Colors.white.withOpacity(0.6),
      title: Text(folder.name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      children: folder.children.map((child) {
        if (child is ApiFolder) {
          return buildFolder(child);
        } else if (child is ApiEndpoint) {
          return ListTile(
            title: Text(child.path, style: const TextStyle(
              color: Colors.white
            )),
            leading: Text(
              child.method,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: child.method == "GET" ? Colors.green : Colors.orange,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      }).toList(),
    );
  }
}

class ApiFolder {
  final String name;
  final List<dynamic> children; // Puede contener `ApiFolder` o `ApiEndpoint`
  ApiFolder(this.name, this.children);
}

class ApiEndpoint {
  final String method;
  final String path;
  ApiEndpoint(this.method, this.path);
}
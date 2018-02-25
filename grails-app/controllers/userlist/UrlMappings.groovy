package userlist

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/da/eto/ochen/josskaya/ssilka"(controller:"user")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

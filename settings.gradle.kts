pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        jcenter() // 추가
        maven {
            url = uri("https://jitpack.io") // yuyakaido implementation 추가
        }
    }
}

rootProject.name = "BadgerSignal"
include(":app")
 
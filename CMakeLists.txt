cmake_minimum_required(VERSION 3.14)
project(IPC_Lab5)

set(CMAKE_CXX_STANDARD 17)

# --- 1. Подключаем GoogleTest ---
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
# Подавляем лишние сообщения
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(googletest)

# --- 2. Важно: Говорим CMake, где искать заголовки (.hpp) ---
# Так как файлы лежат в папке Lab5_OC, добавляем её в поиск
include_directories(Lab5_OC)

# --- 3. Исполняемые файлы (указываем путь к подпапке) ---

# Сервер
add_executable(server Lab5_OC/server.cpp)

# Клиент
add_executable(client Lab5_OC/client.cpp)

# Тесты
add_executable(run_tests Lab5_OC/unit_tests.cpp)

# --- 4. Связывание ---
target_link_libraries(run_tests GTest::gtest_main)

# --- 5. Регистрация тестов ---
enable_testing()
add_test(NAME LockTest COMMAND run_tests)
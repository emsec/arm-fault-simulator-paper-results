libfault_simulator_dep = subproject('fault_simulator').get_variable('libfault_simulator_dep')

executable('fault_simulator_secure_boot',
    sources: files('src/main.cpp'),
    include_directories : include_directories('include'),
    dependencies: libfault_simulator_dep)


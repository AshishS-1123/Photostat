#Translate and install our .desktop file
i18n.merge_file(
    input: 'data' / 'com.github.photostat-editor.photostat.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'

)

#Translate and install our .appdata file
i18n.merge_file(
    input: 'data' / 'com.github.photostat-editor.photostat.appdata.xml.in',
    output: meson.project_name() + '.appdata.xml',
    po_dir: meson.source_root() / 'po',
    install_dir: true,
    install_dir: get_option('datadir') / 'metainfo'
)

# Install our gschema.xml file so the required settings can be saved
install_data(
    'gschema.xml',
    install_dir: join_paths (get_option('datadir'), 'glib-2.0', 'schemas'),
    rename: meson.project_name() + '.gschema.xml'
)

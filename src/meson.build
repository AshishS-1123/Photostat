# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable (
    meson.project_name (),
    'Application.vala',
    'SetupWindow.vala',
    'Window.vala',
    'Services/Settings.vala',
    'Widgets/HeaderBarButton.vala',
    'Widgets/ButtonImage.vala',
    'Widgets/MenuButton.vala',
    'Layouts/HeaderBar.vala',
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('granite')
    ],
    install: true
)

use gtk4::prelude::*;
use gtk4::{Application, ApplicationWindow, Label, gdk};
use gtk4_layer_shell::{Edge, KeyboardMode, Layer, LayerShell};

fn main() {
    let app = Application::builder()
        .application_id("arch.kurt.rust-muted-overlay")
        .build();

    app.connect_activate(build_ui);

    app.run();
}

fn build_ui(app: &Application) {
    let window = ApplicationWindow::builder()
        .application(app)
        .title("Muted")
        .default_width(100)
        .default_height(40)
        .decorated(false)
        .resizable(false)
        .build();

    // Initialize layer shell for this window
    window.init_layer_shell();

    window.set_namespace(Some("rust-muted-overlay"));

    // Layer-shell setup
    window.set_layer(Layer::Overlay);
    window.set_keyboard_mode(KeyboardMode::None);

    // Anchor to top middle
    window.set_anchor(Edge::Top, true);
    window.set_anchor(Edge::Left, false);
    window.set_anchor(Edge::Right, false);
    window.set_anchor(Edge::Bottom, false);

    // Optional margin from top
    window.set_margin(Edge::Top, -40);

    // CSS styling
    let css = r#"
        window.mute-indicator {
            background-color: rgba(19, 30, 34, 0.7);
        }

        label.mute-label {
            font-family: "Hack Nerd Font";
            font-weight: bold;
            font-size: 16px;
            color: #F7768E;
        }
    "#;

    let provider = gtk4::CssProvider::new();
    provider.load_from_data(css);
    gtk4::style_context_add_provider_for_display(
        &gdk::Display::default().unwrap(),
        &provider,
        gtk4::STYLE_PROVIDER_PRIORITY_APPLICATION,
    );

    window.add_css_class("mute-indicator");

    let label = Label::new(Some("  Muted"));
    label.add_css_class("mute-label");
    label.set_halign(gtk4::Align::Center);
    label.set_valign(gtk4::Align::Center);

    window.set_child(Some(&label));
    window.present();
}

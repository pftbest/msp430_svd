use vergen::EmitBuilder;

fn main() {
    EmitBuilder::builder().git_describe(true, true, None)
                          .emit()
                          .unwrap();
}

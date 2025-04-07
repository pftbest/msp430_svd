use anyhow::Result;

fn main() -> Result<()> {
    vergen_gitcl::Emitter::default()
        .add_instructions(
            &vergen_gitcl::GitclBuilder::default()
                .describe(true, true, None)
                .build()?,
        )?
        .emit()?;
    Ok(())
}

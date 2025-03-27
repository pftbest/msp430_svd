use anyhow::Result;

fn main() -> Result<()> {
    vergen_gitcl::Emitter::default()
        .add_instructions(&vergen_gitcl::GitclBuilder::all_git()?)?
        .emit()?;
    vergen_git2::Emitter::default()
        .add_instructions(&vergen_git2::Git2Builder::all_git()?)?
        .emit()?;
    Ok(())
}

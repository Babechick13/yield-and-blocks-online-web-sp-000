 it "is not hard-coded" do
    other_names = ["Ali", "Jasmine", "Persephone"]

    expect{ hello_t(other_names){ |name| puts name } }
      .to output("Ali\nJasmine\nPersephone\n")
    expect{ hello_t(other_names){ |name| puts name.upcase } }
      .to output("ALI\nJASMINE\nPERSEPHONE\n")
      .to_stdout
  end

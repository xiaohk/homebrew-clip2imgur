class Clip2imgur < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "https://github.com/xiaohk/clip2imgur"
  url "https://files.pythonhosted.org/packages/e8/ae/cfba36a2b029549715be9247dc6c93eb4164e6ed7a9fa9b0e2822485209a/clip2imgur-0.9.3.tar.gz"
  sha256 "873767e081731f3ee7c688dd1cd3630a47e7b00ffbff9ecc43d37bbec8ab6f44"

  depends_on "python3"

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/24/ac/61c58e65780c6ba0523997d236fac99e38e5ddfabfd5b500409f8239a257/pyobjc-core-10.2.tar.gz"
    sha256 "0153206e15d0e0d7abd53ee8a7fbaf5606602a032e177a028fc8589516a8771c"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/b0/c0/7eb30628e1a60c8b700f0b15280417c754eda9f186d05d47f4cac6f4e1a7/pyobjc-framework-Cocoa-10.2.tar.gz"
    sha256 "6383141379636b13855dca1b39c032752862b829f93a49d7ddb35046abfdc035"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
    sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

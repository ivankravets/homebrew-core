class Platformio < Formula
  include Language::Python::Virtualenv

  desc "Ecosystem for IoT development (Arduino and ARM mbed compatible)"
  homepage "http://platformio.org"
  url "https://pypi.python.org/packages/97/02/58c93caf59a93999b9b17640b467fca5812a96fae30de6b9acc84d827676/platformio-3.3.0.tar.gz"
  sha256 "6870d177035bd75472862b57c4c03a910174da5d217e69d5ddd12aa54a43ad64"

  bottle do
    cellar :any_skip_relocation
    sha256 "991ae3c2f9885133ffac704cccb1b9a972bb87d3323de135d95ade336330bf37" => :sierra
    sha256 "f7c3dfb4f492afeda3f5382509e89686b2c9d38d7c2d98ee32ce00340d32ffaa" => :el_capitan
    sha256 "c46726959dbe80539200bdb84fb750e351a48e952a630ec0e6c04bf8ada52855" => :yosemite
  end

  depends_on :python if MacOS.version <= :snow_leopard

  resource "arrow" do
    url "https://pypi.python.org/packages/54/db/76459c4dd3561bbe682619a5c576ff30c42e37c2e01900ed30a501957150/arrow-0.10.0.tar.gz"
    sha256 "805906f09445afc1f0fc80187db8fe07670e3b25cdafa09b8d8ac264a8c0c722"
  end

  resource "bottle" do
    url "https://pypi.python.org/packages/bd/99/04dc59ced52a8261ee0f965a8968717a255ea84a36013e527944dbf3468c/bottle-0.12.13.tar.gz"
    sha256 "39b751aee0b167be8dffb63ca81b735bbf1dd0905b3bc42761efedee8f123355"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/b7/34/a496632c4fb6c1ee76efedf77bb8d28b29363d839953d95095b12defe791/click-5.1.tar.gz"
    sha256 "678c98275431fad324275dec63791e4a17558b40e5a110e20a82866139a85a5a"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/f0/d0/21c6449df0ca9da74859edc40208b3a57df9aca7323118c913e58d442030/colorama-0.3.7.tar.gz"
    sha256 "e043c8d32527607223652021ff648fbb394d5e19cba9f1a698670b338c9d782b"
  end

  resource "lockfile" do
    url "https://files.pythonhosted.org/packages/17/47/72cb04a58a35ec495f96984dddb48232b551aafb95bde614605b754fe6f7/lockfile-0.12.2.tar.gz"
    sha256 "6aed02de03cba24efabcd600b30540140634fc06cfa603822d508d5361e9f799"
  end

  resource "pyserial" do
    url "https://pypi.python.org/packages/8d/88/cf848688ae011085a6da5a470740dafa3a4b105f84a5f79c3b720c19279c/pyserial-3.3.tar.gz"
    sha256 "2949cddffc2b05683065a3cd2345114b1a49b08df8cb843d69ba99dc3e19edc2"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/16/09/37b69de7c924d318e51ece1c4ceb679bf93be9d05973bb30c35babd596e2/requests-2.13.0.tar.gz"
    sha256 "5722cd09762faa01276230270ff16af7acf7c5c45d623868d9ba116f15791ce8"
  end

  resource "semantic_version" do
    url "https://pypi.python.org/packages/72/83/f76958017f3094b072d8e3a72d25c3ed65f754cc607fdb6a7b33d84ab1d5/semantic_version-2.6.0.tar.gz"
    sha256 "2a4328680073e9b243667b201119772aefc5fc63ae32398d6afafff07c4f54c0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"platformio"
    system bin/"pio"
  end
end

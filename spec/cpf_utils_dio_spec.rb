# frozen_string_literal: true

RSpec.describe CpfUtilsDio do
  it "Verificando a versão da biblioteca" do
    expect(CpfUtilsDio::VERSION).not_to be nil
  end

  it "validar o formato de CPF" do
    cpf = "33253375512"
    formatado = CpfUtilsDio::formatar(cpf)

    expect("332.533.755-12").to eq(formatado)
  end

  it "validar um cpf inválido sem formatação" do
    cpf = "33253375512"
    falso = CpfUtilsDio::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf inválido com formatação" do
    cpf = "332.533.755-12"
    falso = CpfUtilsDio::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf inválido e inteiro" do
    cpf = 332575512
    falso = CpfUtilsDio::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf válido formatado" do
    cpf = "985.314.120-56"
    verdadeiro = CpfUtilsDio::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end

  it "validar um cpf válido desformatado" do
    cpf = "98531412056"
    verdadeiro = CpfUtilsDio::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end

  it "validar um cpf válido formatado parcialmente" do
    cpf = "985314.120-56"
    verdadeiro = CpfUtilsDio::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end
end

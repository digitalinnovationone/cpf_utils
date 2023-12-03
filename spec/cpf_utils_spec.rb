# frozen_string_literal: true

RSpec.describe CpfUtils do
  it "Verificando a versão da biblioteca" do
    expect(CpfUtils::VERSION).not_to be nil
  end

  it "validar o formato de CPF" do
    cpf = "33253375512"
    formatado = CpfUtils::formatar(cpf)

    expect("332.533.755-12").to eq(formatado)
  end

  it "validar um cpf inválido sem formatação" do
    cpf = "33253375512"
    falso = CpfUtils::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf inválido com formatação" do
    cpf = "332.533.755-12"
    falso = CpfUtils::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf inválido e inteiro" do
    cpf = 332575512
    falso = CpfUtils::cpf_valido?(cpf)
    expect(false).to eq(falso)
  end

  it "validar um cpf válido formatado" do
    cpf = "985.314.120-56"
    verdadeiro = CpfUtils::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end

  it "validar um cpf válido desformatado" do
    cpf = "98531412056"
    verdadeiro = CpfUtils::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end

  it "validar um cpf válido formatado parcialmente" do
    cpf = "985314.120-56"
    verdadeiro = CpfUtils::cpf_valido?(cpf)
    expect(true).to eq(verdadeiro)
  end
end

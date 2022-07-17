require "student"

describe Student do
  subject { described_class.new }
  it '#bar' do
    # Verify
    expect(subject).to receive(:bar)

    # Exercise
    subject.bar
  end

  it 'args' do
    expect(subject).to receive(:foo).with(123)
    subject.foo(123)
  end

  it 'repetição' do
    expect(subject).to receive(:foo).with(123).twice
    subject.foo(123)
    subject.foo(123)
  end

  it 'retorno' do
    expect(subject).to receive(:foo).with(123).and_return(true)
    subject.foo(123)
  end
end
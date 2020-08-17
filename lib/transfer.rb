class Transfer
  attr_reader :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    # access sender's balance
    sender.balance - amount
    # remove amount
    # access receiver's balance
    # add amount
    receiver.balance + amount
  end
end

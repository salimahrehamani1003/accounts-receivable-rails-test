module InvoicesHelper
  def to_money(cents)
    return "$0.00" if cents == 0
    "$#{cents.to_s.insert(-3, ".")}"
  end

  def to_yen(cents)
    return "0 ¥" if cents == 0

    yen_amount = CurrencyConverter.convert(from: "USD", to: "JPY", cents: cents)

    "#{yen_amount.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} ¥"
  end
end

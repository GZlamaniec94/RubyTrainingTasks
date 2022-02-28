
# My solution for Code Wars task
def alphabet_position(text)
    aplhabet = ("a".."z").to_a
    nwstr = (text.downcase.scan(/[a-z]/)).join
    nwstr.split("")
    nwstrar = nwstr.split("")
    i = 0
    while   i < (nwstrar.length) do      
      nwstrar[i] = ((aplhabet.index(nwstrar[i])) + 1).to_s
      i = i + 1
    end
  
    nwstrar.join(" ")
  end
  
#Best practise  
def alphabet_position(text)
    text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end
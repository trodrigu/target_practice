class EmailPermutator
  include ActiveRecord::Validations

  CURRENT_CADENCES = Cadence.all

  def initialize(params)
    @email = params[:email]
    @first_name = params[:first_name]
    @fi = @first_name.first
    @last_name = params[:last_name]
    @middle_name = params[:middle_name]
    @business = params[:business]
    @domain = domain

    if @middle_name
      @mi = @middle_name.first
    else
      @mi = @first_name.first
    end
    @ln = @last_name.first
    @business = params[:business]
  end

  def create_target
    CURRENT_CADENCES.each do |c|
      @email = c.permutation % { fn: @first_name, ln: @last_name, mn: @middle_name, fi: @fi, mi: @mi, li: @li } + @domain
      target_params = {
        email: @email.downcase,
        first_name: @first_name,
        last_name: @last_name,
        business: @business,
        domain: @domain
      }
      target = Target.new(target_params)
      if target.valid?
        return target
        break
      else
        @email = nil
      end
    end
  end
  
  def domain
    #TODO: deal will non .com's
    "@#{@business}.com"
  end
end


abstract type AbstractBregmanPotential end

# Usually, Tv is Float64
struct EuclideanBregmanPotential{Tweights<:AbstractArray}<:AbstractBregmanPotential 
    # the potential is given by x ↦ x' diagm(weights) x / 2
    weights::Tweights
end

function EuclideanBregmanPotential(weights)
    return EuclideanBregmanPotential{typeof(weights)}(weights)
end


function evaluate_potential(potential::EuclideanBregmanPotential, x)
    return #value of potential
end

function evaluate_gradient(potential::EuclideanBregmanPotential, x)
    return #handwritten gradient
end

function evaluate_gradient(potential::AbstractBregmanPotential, x)
    return #using autograd and evaluate_potential
end
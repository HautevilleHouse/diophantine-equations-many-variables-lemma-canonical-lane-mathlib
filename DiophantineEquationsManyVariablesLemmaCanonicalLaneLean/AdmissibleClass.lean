import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
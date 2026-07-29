import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure AdditiveCombinatoricsPackage where
  sumsetEstimates : Prop
  differenceSetEstimates : Prop
  freimanRuzsaTheorem : Prop
  polynomialFreimanRuzsa : Prop

structure AdditiveCombinatoricsEvidence (A : AdditiveCombinatoricsPackage) where
  sumsetEstimatesClosed : A.sumsetEstimates
  differenceSetEstimatesClosed : A.differenceSetEstimates
  freimanRuzsaTheoremClosed : A.freimanRuzsaTheorem
  polynomialFreimanRuzsaClosed : A.polynomialFreimanRuzsa

def AdditiveCombinatoricsClosed (A : AdditiveCombinatoricsPackage) : Prop :=
  A.sumsetEstimates ∧ A.differenceSetEstimates ∧ A.freimanRuzsaTheorem ∧ A.polynomialFreimanRuzsa

theorem additive_combinatorics_closed_from_evidence (A : AdditiveCombinatoricsPackage)
    (E : AdditiveCombinatoricsEvidence A) : AdditiveCombinatoricsClosed A := by
  exact And.intro E.sumsetEstimatesClosed (And.intro E.differenceSetEstimatesClosed
    (And.intro E.freimanRuzsaTheoremClosed E.polynomialFreimanRuzsaClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
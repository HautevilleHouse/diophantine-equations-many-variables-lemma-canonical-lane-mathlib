import canonicalLaneMathlib.AdmissibleClass
import DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.VinogradovMeanValue

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure ManyVariablesLemmaPackage {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} (V : VinogradovMeanValuePackage W) where
  solutionExistence : Prop
  solutionAsymptotic : Prop
  numberVariablesSufficient : Prop
  mainTheorem : Prop

structure ManyVariablesLemmaEvidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} {V : VinogradovMeanValuePackage W} (M : ManyVariablesLemmaPackage V) where
  solutionExistenceClosed : M.solutionExistence
  solutionAsymptoticClosed : M.solutionAsymptotic
  numberVariablesSufficientClosed : M.numberVariablesSufficient
  mainTheoremClosed : M.mainTheorem

def ManyVariablesLemmaClosed {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} {V : VinogradovMeanValuePackage W} (M : ManyVariablesLemmaPackage V) : Prop :=
  M.solutionExistence ∧ M.solutionAsymptotic ∧ M.numberVariablesSufficient ∧ M.mainTheorem

theorem many_variables_lemma_closed_from_evidence {D : DiophantineSystem} {H : HardysCircleMethodPackage D} {W : WeylSumsPackage H} {V : VinogradovMeanValuePackage W} (M : ManyVariablesLemmaPackage V) (E : ManyVariablesLemmaEvidence M) :
    ManyVariablesLemmaClosed M := by
  exact And.intro E.solutionExistenceClosed (And.intro E.solutionAsymptoticClosed (And.intro E.numberVariablesSufficientClosed E.mainTheoremClosed))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure DecouplingPackage where
  l2Decoupling : Prop
  wavePacketDecomposition : Prop
  parabolicRescaling : Prop
  multilinearKakeya : Prop
  mainTheorem : Prop

structure DecouplingEvidence (D : DecouplingPackage) where
  l2DecouplingClosed : D.l2Decoupling
  wavePacketDecompositionClosed : D.wavePacketDecomposition
  parabolicRescalingClosed : D.parabolicRescaling
  multilinearKakeyaClosed : D.multilinearKakeya
  mainTheoremClosed : D.mainTheorem

def DecouplingClosed (D : DecouplingPackage) : Prop :=
  D.l2Decoupling ∧ D.wavePacketDecomposition ∧ D.parabolicRescaling ∧ D.multilinearKakeya ∧ D.mainTheorem

theorem decoupling_closed_from_evidence (D : DecouplingPackage)
    (E : DecouplingEvidence D) : DecouplingClosed D := by
  exact And.intro E.l2DecouplingClosed (And.intro E.wavePacketDecompositionClosed
    (And.intro E.parabolicRescalingClosed (And.intro E.multilinearKakeyaClosed E.mainTheoremClosed)))

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse
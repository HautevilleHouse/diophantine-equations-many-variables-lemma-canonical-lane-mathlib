import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineEquationsManyVariablesLemmaCanonicalLaneLean.WeilBounds

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesLemmaCanonicalLaneLean

structure BirchSwinnertonDyerTypePackage {W : WeilBoundsPackage} where
  abelianVariety : Type u
  lfunction : Type v
  analyticRank : Prop
  algebraicRank : Prop
  rankEquality : Prop

structure BirchSwinnertonDyerTypeEvidence {W : WeilBoundsPackage} (B : BirchSwinnertonDyerTypePackage W) where
  rankEqualityClosed : B.rankEquality

def BirchSwinnertonDyerTypeClosed {W : WeilBoundsPackage} (B : BirchSwinnertonDyerTypePackage W) : Prop :=
  B.analyticRank ∧ B.algebraicRank ∧ B.rankEquality

theorem birch_swinnerton_dyer_type_closed_from_evidence {W : WeilBoundsPackage}
    (B : BirchSwinnertonDyerTypePackage W) (E : BirchSwinnertonDyerTypeEvidence B) :
    BirchSwinnertonDyerTypeClosed B := by
  exact And.intro B.analyticRank (And.intro B.algebraicRank E.rankEqualityClosed)

end DiophantineEquationsManyVariablesLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure GuerraToninelliBridge where
  interpolationParameter : ℝ
  freeEnergyDifference : ℝ
  lowerBound : ℝ
  upperBound : ℝ

structure GuerraToninelliBridgeEvidence (G : GuerraToninelliBridge) where
  interpolationParameterInUnitInterval : 0 ≤ G.interpolationParameter ∧ G.interpolationParameter ≤ 1
  lowerBoundNonpositive : G.lowerBound ≤ 0
  upperBoundNonnegative : G.upperBound ≥ 0
  freeEnergyDifferenceBetween : G.lowerBound ≤ G.freeEnergyDifference ∧ G.freeEnergyDifference ≤ G.upperBound

def GuerraToninelliBridgeClosed (G : GuerraToninelliBridge) : Prop :=
  (0 ≤ G.interpolationParameter ∧ G.interpolationParameter ≤ 1) ∧
  G.lowerBound ≤ G.freeEnergyDifference ∧ G.freeEnergyDifference ≤ G.upperBound

theorem guerra_toninelli_bridge_closed_from_evidence (G : GuerraToninelliBridge) (E : GuerraToninelliBridgeEvidence G) : GuerraToninelliBridgeClosed G := by
  exact And.intro E.interpolationParameterInUnitInterval (And.intro E.lowerBoundNonpositive E.upperBoundNonnegative)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
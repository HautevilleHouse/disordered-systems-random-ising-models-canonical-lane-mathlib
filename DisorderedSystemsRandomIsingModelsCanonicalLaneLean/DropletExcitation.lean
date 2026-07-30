import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure DropletExcitationPackage where
  dropletLengthScale : ℕ
  excitationEnergyScaling : ℝ
  stiffnessExponent : ℝ
  domainWallRenormalization : Prop
  zeroTemperatureFixedPoint : Prop

structure DropletExcitationEvidence (D : DropletExcitationPackage) where
  domainWallRenormalizationClosed : D.domainWallRenormalization
  zeroTemperatureFixedPointClosed : D.zeroTemperatureFixedPoint

def DropletExcitationClosed (D : DropletExcitationPackage) : Prop :=
  D.domainWallRenormalization ∧ D.zeroTemperatureFixedPoint

theorem droplet_excitation_closed_from_evidence (D : DropletExcitationPackage)
    (E : DropletExcitationEvidence D) : DropletExcitationClosed D := by
  exact And.intro E.domainWallRenormalizationClosed E.zeroTemperatureFixedPointClosed

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
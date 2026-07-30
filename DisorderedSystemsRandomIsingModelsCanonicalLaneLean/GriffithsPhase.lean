import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure GriffithsPhaseModel where
  rareRegionDensity : ℝ
  dynamicalExponent : ℝ
  activationEnergy : ℝ
  survivalProbability : ℝ → ℝ

structure GriffithsPhasePackage (G : GriffithsPhaseModel) where
  rareRegionsExist : Prop
  activatedScaling : Prop
  smearedTransition : Prop
  singularFreeEnergy : Prop

structure GriffithsPhaseEvidence {G : GriffithsPhaseModel} (P : GriffithsPhasePackage G) where
  rareRegionsExistClosed : P.rareRegionsExist
  activatedScalingClosed : P.activatedScaling
  smearedTransitionClosed : P.smearedTransition
  singularFreeEnergyClosed : P.singularFreeEnergy

def GriffithsPhaseClosed {G : GriffithsPhaseModel} (P : GriffithsPhasePackage G) : Prop :=
  P.rareRegionsExist ∧ P.activatedScaling ∧ P.smearedTransition ∧ P.singularFreeEnergy

theorem griffiths_phase_closed_from_evidence {G : GriffithsPhaseModel} (P : GriffithsPhasePackage G) (E : GriffithsPhaseEvidence P) :
    GriffithsPhaseClosed P := by
  exact And.intro E.rareRegionsExistClosed
    (And.intro E.activatedScalingClosed
      (And.intro E.smearedTransitionClosed E.singularFreeEnergyClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
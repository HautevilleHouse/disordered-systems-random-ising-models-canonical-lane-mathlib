import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.RandomFieldIsingModel

/-!
# SherringtonKirkpatrickModel Package
-/

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure SherringtonKirkpatrickModelPackage (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I) where
  infiniteRangeCoupling : Prop
  couplingVariance : Prop
  replicaSymmetryBreaking : Prop
  parisiFormula : Prop

structure SherringtonKirkpatrickModelEvidence (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I)
    (S : SherringtonKirkpatrickModelPackage I R) where
  infiniteRangeCouplingClosed : S.infiniteRangeCoupling
  couplingVarianceClosed : S.couplingVariance
  replicaSymmetryBreakingClosed : S.replicaSymmetryBreaking
  parisiFormulaClosed : S.parisiFormula

def SherringtonKirkpatrickModelClosed (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I)
    (S : SherringtonKirkpatrickModelPackage I R) : Prop :=
  S.infiniteRangeCoupling ∧ S.couplingVariance ∧ S.replicaSymmetryBreaking ∧ S.parisiFormula

theorem sherrington_kirkpatrick_model_closed_from_evidence (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I)
    (S : SherringtonKirkpatrickModelPackage I R) (E : SherringtonKirkpatrickModelEvidence I R S) :
    SherringtonKirkpatrickModelClosed I R S := by
  exact And.intro E.infiniteRangeCouplingClosed
    (And.intro E.couplingVarianceClosed
      (And.intro E.replicaSymmetryBreakingClosed E.parisiFormulaClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
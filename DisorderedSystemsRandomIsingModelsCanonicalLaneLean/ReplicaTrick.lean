import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure ReplicaTrickPackage where
  replicaCount : ℕ
  partitionFunctionMoment : ℕ → ℝ
  annealedAverage : Prop
  quenchedAverage : Prop
  replicaSymmetricAnsatz : Prop
  replicaSymmetryBreaking : Prop

structure ReplicaTrickEvidence (R : ReplicaTrickPackage) where
  annealedAverageClosed : R.annealedAverage
  quenchedAverageClosed : R.quenchedAverage
  replicaSymmetricAnsatzClosed : R.replicaSymmetricAnsatz
  replicaSymmetryBreakingClosed : R.replicaSymmetryBreaking

def ReplicaTrickClosed (R : ReplicaTrickPackage) : Prop :=
  R.annealedAverage ∧ R.quenchedAverage ∧ R.replicaSymmetricAnsatz ∧ R.replicaSymmetryBreaking

theorem replica_trick_closed_from_evidence (R : ReplicaTrickPackage)
    (E : ReplicaTrickEvidence R) : ReplicaTrickClosed R := by
  exact And.intro E.annealedAverageClosed
    (And.intro E.quenchedAverageClosed
      (And.intro E.replicaSymmetricAnsatzClosed E.replicaSymmetryBreakingClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
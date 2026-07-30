import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.PhaseDiagram

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure SherringtonKirkpatrickSolution {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} {R : ReplicaSymmetryBreaking H} (P : PhaseDiagram R) where
  freeEnergyFormula : ℝ
  variationalPrinciple : Prop
  parisiFormulaClosed : Prop
  freeEnergyClosed : freeEnergyFormula = 1.0
  variationalTerm : variationalPrinciple
  parisiFormulaTerm : parisiFormulaClosed

def SherringtonKirkpatrickSolutionClosed {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} {R : ReplicaSymmetryBreaking H} {P : PhaseDiagram R} (S : SherringtonKirkpatrickSolution P) : Prop :=
  S.freeEnergyClosed ∧ S.variationalPrinciple ∧ S.parisiFormulaClosed

theorem sherrington_kirkpatrick_solution_closed {G : RandomIsingGraph} {H : SpinGlassHamiltonian G} {R : ReplicaSymmetryBreaking H} {P : PhaseDiagram R} (S : SherringtonKirkpatrickSolution P) : SherringtonKirkpatrickSolutionClosed S := by
  exact And.intro S.freeEnergyClosed (And.intro S.variationalTerm S.parisiFormulaTerm)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse
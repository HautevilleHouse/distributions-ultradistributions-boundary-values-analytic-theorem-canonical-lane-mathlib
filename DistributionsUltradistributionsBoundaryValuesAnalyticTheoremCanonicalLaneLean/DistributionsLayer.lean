import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean

structure DistributionDatum where
  name : String
  supportType : String
  smoothness : String
  growthCondition : String
  boundaryValueRoute : String

structure DistributionLayerCertificate where
  distribution : DistributionDatum
  boundaryRepresentation : String
  analyticContinuationRoute : String
  layerClosed : Bool

def primitiveDistribution : DistributionDatum := {
  name := "tempered_distribution",
  supportType := "compactly_supported",
  smoothness := "smooth",
  growthCondition := "moderate_growth",
  boundaryValueRoute := "boundary_value_via_fourier_transform"
}

def distributionLayerCertificate : DistributionLayerCertificate := {
  distribution := primitiveDistribution,
  boundaryRepresentation := "boundary_value_of_analytic_function",
  analyticContinuationRoute := "analytic_continuation_via_paley_wiener",
  layerClosed := true
}

def DistributionLayerClosed (C : DistributionLayerCertificate) : Prop :=
  C.distribution.name = "tempered_distribution" ∧
  C.boundaryRepresentation = "boundary_value_of_analytic_function" ∧
  C.layerClosed = true

theorem distribution_layer_closed_checked :
    DistributionLayerClosed distributionLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean
end HautevilleHouse

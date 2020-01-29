class ServiceProviderScreenListviewModel {
  final String serviceProviderImagePath;
  final String serviceProvider;
  final String ratings;
  final String noOfOrderCompleted;
  final String serviceCost;
  final String serviceDuration;

  const ServiceProviderScreenListviewModel(
      {this.serviceProviderImagePath,
      this.serviceProvider,
      this.ratings,
      this.noOfOrderCompleted,
      this.serviceCost,
      this.serviceDuration});
}

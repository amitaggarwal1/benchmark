# Copy benchmarking files to Presto master and connect
zip -r query.zip \
      Warmup.sql \
      PrestoTiming.sql \
      ParquetDdl.sql \
      PopulateRaptor.sql \
      100-BenchmarkPresto.sh \
      query
gcloud compute scp query.zip tpcds-presto-m:~ \
      --zone "us-central1-f"
gcloud compute ssh tpcds-presto-m \
      --zone "us-central1-f"
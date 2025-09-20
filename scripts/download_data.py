## Đây là script one-time để tải dataset nên tách thành 1 file riêng
## --> Tách biệt với processing logic, dễ tái sử dụng, dễ maintain

import kagglehub
path = kagglehub.dataset_download("shashwatwork/dataco-smart-supply-chain-for-big-data-analysis")
print("Path to dataset files:", path)

## Sau khi chạy xong sẽ in ra đường dẫn file
## Copy file đó về thư mục của mình bằng cách
## cp /home/gitpod/.cache/kagglehub/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis/versions/1/* /workspace/learning_sql/DataCo_SMART_SCP/data/raw/

## cp [printed path]* [my path]
## Sau đường dẫn thứ nhất phải viết liền, không được có dấu cách

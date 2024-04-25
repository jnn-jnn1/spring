package com.study.sort;

import java.util.Arrays;

public class Quick {
    public static void main(String[] args) {
        // 퀵 정렬을 구현한 코드입니다.
//        int[] arr = new int[10];
//        for (int n = 0; n < arr.length; n++) {
//            arr[n] = (int) (Math.random() * 10);
//        }
        int[] arr = {1, 2, 3, 4, 0, 1, 2, 3, 4};
        // 임의의 순서로 나열된 배열 할당.

        quickSort(arr, 0, arr.length - 1);
        // 퀵 정렬은 low 와 high 를 기준으로
        // 서로 교차하는 방향으로 탐색하면서 분할 정렬합니다.

        System.out.println(Arrays.toString(arr));

    }

    static void quickSort(int[] arr, int low, int high) {
        // 원본 배열의 원소를 직접 swap 하기 때문에,
        // 원본 배열인 arr 과,
        // pivot 을 기준으로 분할해서 정렬할
        // low 와 high 를 인자로 받습니다.
        if (low >= high) return;
        // low 와 high 가 같아졌다는 건
        // 더이상 분할이 안된다는 의미이므로,
        // 재귀형의 종료 구문을 작성해줍니다.
        int pivot = low + (high - low) / 2;
        // pivot 은 각각 분할된 low 와 high 의
        // 범위 내라면 아무거나 상관없고,
        // 성능을 높이려면 원소들 중 몇 개를 확인한 뒤,
        // 그 중 중간인 값을 지정하는 게 가장 좋습니다만,
        // 아직 거기까진 구현하지 못해 중간지점으로 합니다.
        int pValue = arr[pivot];
        // swap 되는 과정에서 pivot 이 바뀔 수 있기 때문에,
        // 따로 변수를 할당받습니다.
        int left = low;
        int right = high;
        // low 와 high 는 범위로써 작용해야 하고,
        // 증가 혹은 감소하는 인덱스의 역할로써
        // left 와 right 를 지정합니다.

        while (left <= right) {
            // left 와 right 가 같아지면
            // 서로 위치가 교차하는 것이기 때문에,
            // 반복을 종료합니다.
            while (arr[left] < pValue) {
                left++;
            }
            while (arr[right] > pValue) {
                right--;
            }
            // 각 while 문에서는
            // pivot 값을 기준으로 교체해야 하는 값이 나올 때까지
            // 인덱스를 옮겨가며 비교를 합니다.
            if (left <= right) {
                // 교체하기 전에,
                // 두 인덱스의 위치가 교차하지 않았는지
                // 확인합니다.
                int swap = arr[left];
                arr[left] = arr[right];
                arr[right] = swap;
                left++;
                right--;
            }
        }

        quickSort(arr, low, right);
        quickSort(arr, left, high);
        // 왼쪽과 오른쪽을 분할해서 같은 작업을 수행합니다.
    }
}

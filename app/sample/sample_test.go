package sample

import "testing"

func TestSum(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "Test 2 + 3",
			args: args{a: 2, b: 3},
			want: 5,
		},
		{
			name: "Test -2 + 3",
			args: args{a: -2, b: 3},
			want: 1,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Sum(tt.args.a, tt.args.b); got != tt.want {
				t.Errorf("Sum() = %v, want %v", got, tt.want)
			}
		})
	}
}

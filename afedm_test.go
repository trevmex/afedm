package afedm

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestHello(t *testing.T) {
	assert.Equal(t, "Hello, world.", Hello(), "should display \"Hello, world.\"")
}

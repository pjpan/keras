% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers-convolutional.R
\name{layer_zero_padding_2d}
\alias{layer_zero_padding_2d}
\title{Zero-padding layer for 2D input (e.g. picture).}
\usage{
layer_zero_padding_2d(object, padding = c(1L, 1L), data_format = NULL,
  batch_size = NULL, name = NULL, trainable = NULL, weights = NULL)
}
\arguments{
\item{object}{Model or layer object}

\item{padding}{int, or list of 2 ints, or list of 2 lists of 2 ints.
\itemize{
\item If int: the same symmetric padding is applied to width and height.
\item If list of 2 ints: interpreted as two different symmetric padding values for height
and width: \code{(symmetric_height_pad, symmetric_width_pad)}.
\item If list of 2 lists of 2 ints: interpreted as \code{((top_pad, bottom_pad), (left_pad, right_pad))}
}}

\item{data_format}{A string, one of \code{channels_last} (default) or
\code{channels_first}. The ordering of the dimensions in the inputs.
\code{channels_last} corresponds to inputs with shape \code{(batch, height, width, channels)} while \code{channels_first} corresponds to inputs with shape \code{(batch, channels, height, width)}. It defaults to the \code{image_data_format} value
found in your Keras config file at \code{~/.keras/keras.json}. If you never set
it, then it will be "channels_last".}

\item{batch_size}{Fixed batch size for layer}

\item{name}{An optional name string for the layer. Should be unique in a
model (do not reuse the same name twice). It will be autogenerated if it
isn't provided.}

\item{trainable}{Whether the layer weights will be updated during training.}

\item{weights}{Initial weights for layer.}
}
\description{
This layer can add rows and columns of zeros at the top, bottom, left and
right side of an image tensor.
}
\section{Input shape}{
 4D tensor with shape:
\itemize{
\item If \code{data_format} is \code{"channels_last"}: \code{(batch, rows, cols, channels)}
\item If \code{data_format} is \code{"channels_first"}: \code{(batch, channels, rows, cols)}
}
}

\section{Output shape}{
 4D tensor with shape:
\itemize{
\item If \code{data_format} is \code{"channels_last"}: \code{(batch, padded_rows, padded_cols, channels)}
\item If \code{data_format} is \code{"channels_first"}: \code{(batch, channels, padded_rows, padded_cols)}
}
}

\seealso{
Other convolutional layers: \code{\link{layer_conv_1d}},
  \code{\link{layer_conv_2d_transpose}},
  \code{\link{layer_conv_2d}},
  \code{\link{layer_conv_3d_transpose}},
  \code{\link{layer_conv_3d}},
  \code{\link{layer_conv_lstm_2d}},
  \code{\link{layer_cropping_1d}},
  \code{\link{layer_cropping_2d}},
  \code{\link{layer_cropping_3d}},
  \code{\link{layer_separable_conv_2d}},
  \code{\link{layer_upsampling_1d}},
  \code{\link{layer_upsampling_2d}},
  \code{\link{layer_upsampling_3d}},
  \code{\link{layer_zero_padding_1d}},
  \code{\link{layer_zero_padding_3d}}
}

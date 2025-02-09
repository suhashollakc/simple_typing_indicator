/// A simple, lightweight Flutter widget that displays a pulsing "typing..."
/// indicator using animated dots.
///
/// This package provides a minimal API for adding a typing indicator in chat
/// or messaging applications. It supports customization of dot color, size,
/// spacing, animation duration, and speed.
///
/// Example:
/// ```dart
/// SimpleTypingIndicator(
///   dotColor: Colors.blue,
///   dotSize: 12.0,
///   spacing: 6.0,
///   duration: Duration(milliseconds: 1500),
///   speed: 1.5,
/// )
/// ```
///
/// For more information, see the [README](README.md).
library simple_typing_indicator;

import 'package:flutter/material.dart';

/// A simple, lightweight typing indicator widget that displays three dots
/// pulsing in a staggered fashion. This widget is intended for chat apps or
/// any interface needing a "typing..." animation.
class SimpleTypingIndicator extends StatefulWidget {
  /// The color of the dots.
  final Color dotColor;

  /// The size of each dot.
  final double dotSize;

  /// The spacing between the dots.
  final double spacing;

  /// The base duration of one complete animation cycle.
  final Duration duration;

  /// A speed multiplier that controls the effective speed of the animation.
  ///
  /// The effective duration is calculated as:
  ///   effectiveDuration = duration.inMilliseconds / speed
  ///
  /// A higher [speed] value makes the animation run faster.
  final double speed;

  /// Creates a [SimpleTypingIndicator].
  const SimpleTypingIndicator({
    super.key,
    this.dotColor = Colors.grey,
    this.dotSize = 8.0,
    this.spacing = 4.0,
    this.duration = const Duration(milliseconds: 1200),
    this.speed = 1.0,
  });

  @override
  SimpleTypingIndicatorState createState() => SimpleTypingIndicatorState();
}

/// Public state class for [SimpleTypingIndicator].
class SimpleTypingIndicatorState extends State<SimpleTypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    // Compute the effective duration based on the speed multiplier.
    final effectiveDuration = Duration(
      milliseconds: (widget.duration.inMilliseconds / widget.speed).round(),
    );

    // Create an AnimationController that repeats indefinitely using the effective duration.
    _controller = AnimationController(
      duration: effectiveDuration,
      vsync: this,
    )..repeat();

    // Define three staggered animations for the three dots.
    _animation1 = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.7, curve: Curves.easeInOut),
      ),
    );
    _animation2 = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.9, curve: Curves.easeInOut),
      ),
    );
    _animation3 = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.4, 1.0, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Builds a single dot widget that scales based on the given [animation].
  Widget _buildDot(Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.scale(
          scale: animation.value,
          child: child,
        );
      },
      child: Container(
        width: widget.dotSize,
        height: widget.dotSize,
        decoration: BoxDecoration(
          color: widget.dotColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildDot(_animation1),
        SizedBox(width: widget.spacing),
        _buildDot(_animation2),
        SizedBox(width: widget.spacing),
        _buildDot(_animation3),
      ],
    );
  }
}

import Foundation

public struct PixelKit {

    public static func stylishRefreshable(isRefreshing: inout Bool, color: UIColor = .blue, size: CGFloat = 30) {
        if isRefreshing {
            let progressIndicator = UIActivityIndicatorView(style: .medium)
            progressIndicator.color = color
            progressIndicator.frame = CGRect(x: 0, y: 0, width: size, height: size)
            progressIndicator.startAnimating()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                isRefreshing = false
                progressIndicator.stopAnimating()
            }
        }
    }

    public static func addShadow(to view: UIView, radius: CGFloat = 5, opacity: Float = 0.5) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = opacity
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = radius
    }

    public static func addBorder(to view: UIView, color: UIColor = .gray, width: CGFloat = 1) {
        view.layer.borderColor = color.cgColor
        view.layer.borderWidth = width
    }

    public static func roundCorners(for view: UIView, radius: CGFloat = 10) {
        view.layer.cornerRadius = radius
        view.clipsToBounds = true
    }

    public static func fadeIn(view: UIView, duration: TimeInterval = 0.5) {
        view.alpha = 0
        UIView.animate(withDuration: duration) {
            view.alpha = 1
        }
    }

    public static func fadeOut(view: UIView, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration) {
            view.alpha = 0
        }
    }

    public static func addGradientBackground(to view: UIView, colors: [UIColor], direction: GradientDirection) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.frame = view.bounds
        
        switch direction {
        case .horizontal:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        case .vertical:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        }

        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    public static func scaleAnimation(view: UIView, scale: CGFloat = 1.2, duration: TimeInterval = 0.3) {
        UIView.animate(withDuration: duration) {
            view.transform = CGAffineTransform(scaleX: scale, y: scale)
        } completion: { _ in
            UIView.animate(withDuration: duration) {
                view.transform = CGAffineTransform.identity
            }
        }
    }

    public static func setOpacity(for view: UIView, opacity: CGFloat) {
        view.alpha = opacity
    }

    public static func addCornerRadius(view: UIView, radius: CGFloat) {
        view.layer.cornerRadius = radius
    }

    public static func changeBackgroundColor(of view: UIView, color: UIColor, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration) {
            view.backgroundColor = color
        }
    }

    public static func animatePosition(view: UIView, to position: CGPoint, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration) {
            view.center = position
        }
    }

    public static func setHidden(view: UIView, hidden: Bool, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration) {
            view.alpha = hidden ? 0 : 1
        } completion: { _ in
            view.isHidden = hidden
        }
    }

    public static func addBounceAnimation(view: UIView, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration / 2, animations: {
            view.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { _ in
            UIView.animate(withDuration: duration / 2) {
                view.transform = CGAffineTransform.identity
            }
        }
    }

    public static func shake(view: UIView, duration: TimeInterval = 0.5) {
        let originalPosition = view.center
        UIView.animate(withDuration: duration / 10, animations: {
            view.center.x += 10
        }) { _ in
            UIView.animate(withDuration: duration / 10, animations: {
                view.center.x -= 20
            }) { _ in
                UIView.animate(withDuration: duration / 10, animations: {
                    view.center.x += 10
                }) { _ in
                    view.center = originalPosition
                }
            }
        }
    }

    public static func rotate(view: UIView, angle: CGFloat, duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration) {
            view.transform = CGAffineTransform(rotationAngle: angle)
        }
    }

    public enum GradientDirection {
        case horizontal
        case vertical
    }
}

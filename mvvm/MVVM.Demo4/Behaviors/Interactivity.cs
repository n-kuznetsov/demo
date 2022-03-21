﻿using Microsoft.Xaml.Behaviors;
using System.Collections.Generic;
using System.Windows;

namespace MVVM.Demo4
{
    public static class Interactivity
    {
        public static InteractivityTemplate GetTemplate(DependencyObject obj)
        {
            return (InteractivityTemplate)obj.GetValue(TemplateProperty);
        }

        public static void SetTemplate(DependencyObject obj, InteractivityTemplate value)
        {
            obj.SetValue(TemplateProperty, value);
        }

        public static readonly DependencyProperty TemplateProperty =
            DependencyProperty.RegisterAttached("Template", typeof(InteractivityTemplate), typeof(Interactivity), new PropertyMetadata(default(InteractivityTemplate), OnTemplateChanged));

        private static void OnTemplateChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            InteractivityTemplate dt = (InteractivityTemplate)e.NewValue;
            dt.Seal();

            InteractivityItems ih = (InteractivityItems)dt.LoadContent();
            BehaviorCollection bc = Interaction.GetBehaviors(d);

            foreach (Behavior behavior in ih.Behaviors)
                bc.Add(behavior);
        }
    }
    
    /// <summary>
    /// <see cref="FrameworkTemplate"/> for InteractivityElements instance
    /// <remarks>Subclassed for forward compatibility, perhaps one day <see cref="FrameworkTemplate"/> </remarks>
    /// <remarks>will not be partially internal</remarks>
    /// </summary>
    public class InteractivityTemplate : DataTemplate { }

    /// <summary>
    /// Holder for interactivity entries
    /// </summary>
    public class InteractivityItems : FrameworkElement
    {
        private List<Behavior> _behaviors;

        /// <summary>
        /// Storage for Behaviors
        /// </summary>
        public List<Behavior> Behaviors
        {
            get
            {
                if (_behaviors == null)
                    _behaviors = new List<Behavior>();
                return _behaviors;
            }
        }
    }
}

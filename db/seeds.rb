# Clear existing data
Task.destroy_all
Category.destroy_all

# Create categories
puts "Creating categories..."

work = Category.create!(name: "Work", color: "#3B82F6")       # Blue
personal = Category.create!(name: "Personal", color: "#10B981") # Green
shopping = Category.create!(name: "Shopping", color: "#F59E0B") # Amber
health = Category.create!(name: "Health", color: "#EF4444")     # Red

puts "Created #{Category.count} categories"

# Create tasks
puts "Creating tasks..."

Task.create!(
  title: "Complete project proposal",
  description: "Draft the Q1 project proposal including budget estimates and timeline",
  status: :in_progress,
  priority: :high,
  due_date: Date.today + 3,
  category: work
)

Task.create!(
  title: "Review pull requests",
  description: "Review and merge pending PRs from the team",
  status: :pending,
  priority: :medium,
  due_date: Date.today + 1,
  category: work
)

Task.create!(
  title: "Update documentation",
  description: "Update the README and API docs for the new release",
  status: :pending,
  priority: :low,
  due_date: Date.today + 7,
  category: work
)

Task.create!(
  title: "Call mom",
  description: "Weekly catch-up call",
  status: :pending,
  priority: :medium,
  due_date: Date.today,
  category: personal
)

Task.create!(
  title: "Plan weekend trip",
  description: "Research destinations and book accommodation",
  status: :completed,
  priority: :low,
  due_date: Date.today - 2,
  category: personal
)

Task.create!(
  title: "Buy groceries",
  description: "Milk, eggs, bread, vegetables, and fruits",
  status: :pending,
  priority: :high,
  due_date: Date.today,
  category: shopping
)

Task.create!(
  title: "Order new headphones",
  description: "The old ones are broken - check reviews first",
  status: :in_progress,
  priority: :medium,
  due_date: Date.today + 5,
  category: shopping
)

Task.create!(
  title: "Schedule dentist appointment",
  description: "6-month checkup is overdue",
  status: :pending,
  priority: :high,
  due_date: Date.today + 2,
  category: health
)

Task.create!(
  title: "Go for a run",
  description: "30 minute jog in the park",
  status: :completed,
  priority: :medium,
  due_date: Date.today - 1,
  category: health
)

Task.create!(
  title: "Refill prescription",
  description: "Pick up from pharmacy before they close",
  status: :pending,
  priority: :high,
  due_date: Date.today,
  category: health
)

puts "Created #{Task.count} tasks"
puts "Seeding complete!"

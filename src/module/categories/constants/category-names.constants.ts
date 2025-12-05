/**
 * Valid category names for travel activities
 * These are the main categories that can be used in the system
 */
export const VALID_CATEGORY_NAMES = [
  'Adventure',
  'Culture',
  'Food',
  'Nature',
  'Beach & Water Sports',
  'Wellness & Spa',
  'Nightlife & Entertainment',
  'Shopping',
  'Photography',
  'Wildlife & Safari',
  'Religious & Spiritual',
  'Sports & Fitness',
  'Family & Kids',
  'Romantic',
  'Educational',
  'Transportation',
  'Accommodation',
  'Festivals & Events',
  'Extreme Sports',
  'Art & Craft',
] as const;

/**
 * Type for valid category names
 */
export type ValidCategoryName = typeof VALID_CATEGORY_NAMES[number];

/**
 * Helper function to check if a string is a valid category name
 */
export function isValidCategoryName(name: string): name is ValidCategoryName {
  return VALID_CATEGORY_NAMES.includes(name as ValidCategoryName);
}

/**
 * Get all valid category names as array
 */
export function getValidCategoryNames(): string[] {
  return [...VALID_CATEGORY_NAMES];
}

